package §3B§
{
   import §#!0§.§#-§;
   import §#!0§.§0!7§;
   import §1E§.§5T§;
   import §3!O§.§5q§;
   import §4!0§.§3§;
   import §6h§.§?!I§;
   import §86§.§=u§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   import §@g§.§4!@§;
   import §^?§.§5Q§;
   import §^?§.§;!"§;
   import §^?§.§[9§;
   
   public class §;w§
   {
      
      public static const §!<§:Boolean = true;
       
      
      private var §"P§:§3§;
      
      protected var §;!;§:§5Q§;
      
      private var §><§:Vector.<§1!H§>;
      
      private var §&D§:Sprite;
      
      private var §2x§:Sprite;
      
      private var §'!7§:Sprite;
      
      private var §`!-§:Number;
      
      private var § !I§:Number;
      
      private var §-!;§:Number;
      
      private var § 0§:Boolean = true;
      
      private var §@A§:Boolean = true;
      
      private var §3x§:§0!7§;
      
      private var §[q§:Number;
      
      public function §;w§(param1:String, param2:Number, param3:§3§, param4:Number)
      {
         this.§><§ = new Vector.<§1!H§>();
         super();
         this.§"P§ = param3;
         this.§ !I§ = 0;
         this.§-!;§ = 0;
         this.§`!-§ = param2;
         this.§&D§ = new Sprite();
         this.§2x§ = new Sprite();
         this.§'!7§ = new Sprite();
         this.§[q§ = param4;
         this.§3m§(param1,param4);
      }
      
      public function get §-`§() : Boolean
      {
         return this.§ 0§;
      }
      
      public function get §'!N§() : Sprite
      {
         return this.§'!7§;
      }
      
      public function get §8?§() : Sprite
      {
         return this.§&D§;
      }
      
      public function get §`a§() : Sprite
      {
         return this.§2x§;
      }
      
      protected function get textureManager() : §3§
      {
         return this.§"P§;
      }
      
      public function dispose() : void
      {
         this.§for §();
         if(this.§&D§)
         {
            this.§&D§.dispose();
            this.§&D§ = null;
         }
         if(this.§2x§)
         {
            this.§2x§.dispose();
            this.§2x§ = null;
         }
         if(this.§'!7§)
         {
            this.§'!7§.dispose();
            this.§'!7§ = null;
         }
      }
      
      public function §2!,§() : Boolean
      {
         return this.§@A§;
      }
      
      public function §#Q§(param1:Boolean) : void
      {
         if(this.§@A§ == param1)
         {
            return;
         }
         this.§@A§ = param1;
         if(!param1)
         {
            this.§for §();
         }
         else
         {
            this.§3m§(this.§;!;§.mName,this.§[q§);
         }
      }
      
      public function §^k§() : String
      {
         return this.§;!;§.§?f§;
      }
      
      private function §for §() : void
      {
         while(this.§2x§.numChildren > 0)
         {
            this.§2x§.removeChildAt(0,true);
         }
         while(this.§&D§.numChildren > 0)
         {
            this.§&D§.removeChildAt(0,true);
         }
         while(this.§><§.length > 0)
         {
            this.§><§.pop().dispose();
         }
      }
      
      protected function §27§(param1:§5Q§, param2:String) : void
      {
      }
      
      private function §3m§(param1:String, param2:Number) : void
      {
         var _loc4_:§;!"§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§1!H§ = null;
         this.§;!;§ = §[9§.§ r§(param1);
         if(this.§;!;§ == null)
         {
            §5q§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §5T§.§>S§;
            this.§;!;§ = §[9§.§ r§(param1);
         }
         this.§27§(this.§;!;§,param1);
         this.§&D§.y = this.§`!-§;
         this.§2x§.y = this.§`!-§;
         this.§'!7§.y = this.§`!-§;
         this.§7t§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§;!;§.§><§.length)
         {
            _loc4_ = this.§;!;§.§><§[_loc3_];
            if(!§4!@§.§@m§ || !_loc4_.§;S§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new §1!H§(_loc4_,_loc5_,this.§"P§,param2);
               this.§><§.push(_loc6_);
               if(_loc6_.§58§)
               {
                  this.§2x§.addChild(_loc5_);
               }
               else
               {
                  this.§&D§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§[p§)
            {
               this.§?§(parseInt(_loc4_.§[p§,16));
            }
            _loc3_++;
         }
      }
      
      private function §7t§() : void
      {
         var _loc1_:§=u§ = null;
         if(this.§;!;§.§#9§)
         {
            this.§?§(this.§;!;§.§#9§);
         }
         if(this.§;!;§.§`n§)
         {
            _loc1_ = this.§#!3§(uint(this.§;!;§.§`n§));
            _loc1_.y = 0;
            this.§'!7§.addChild(_loc1_);
         }
      }
      
      protected function §#!3§(param1:uint) : §=u§
      {
         return new §=u§(4096,4096,param1);
      }
      
      protected function §?§(param1:int) : void
      {
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.color = param1;
         }
      }
      
      public function §9!,§(param1:String) : void
      {
         this.§for §();
         §5q§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§3m§(param1,this.§[q§);
      }
      
      public function §'!%§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§1!H§ = null;
         if(param1 == this.§ 0§)
         {
            return;
         }
         this.§ 0§ = param1;
         for each(_loc3_ in this.§><§)
         {
            _loc3_.§'!%§(param1);
         }
      }
      
      public function §2!3§() : void
      {
         if(§#-§.§=f§("CHANNEL_AMBIENT") == null || !§#-§.§=f§("CHANNEL_AMBIENT").§,J§())
         {
            §#-§.playSound(this.§;!;§.§[!P§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §4C§() : void
      {
         §#-§.§`s§("CHANNEL_AMBIENT");
      }
      
      public function §2!M§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§&D§.numChildren)
         {
            _loc2_ = this.§&D§.getChildAt(param1);
         }
         else if(param1 - this.§&D§.numChildren < this.§2x§.numChildren)
         {
            _loc2_ = this.§2x§.getChildAt(param1 - this.§&D§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §`2§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§ !I§ = param1;
         this.§-!;§ = param2;
         if(this.§><§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§><§.length)
            {
               this.§><§[_loc3_].setSideScroll(this.§ !I§,this.§-!;§);
               _loc3_++;
            }
         }
         if(this.§'!7§ != null)
         {
            this.§'!7§.scaleX = this.§'!7§.scaleY = 1 / §?!I§.levelScale;
            this.§'!7§.x = -§?!I§.§3^§ * (1 / §?!I§.levelScale);
            this.§'!7§.y = this.§`!-§ - this.§-!;§;
         }
      }
      
      public function §6U§() : String
      {
         return this.§;!;§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
