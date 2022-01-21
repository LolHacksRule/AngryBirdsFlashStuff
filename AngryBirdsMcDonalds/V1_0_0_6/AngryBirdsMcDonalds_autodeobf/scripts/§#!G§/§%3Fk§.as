package §#!G§
{
   import §&!!§.§<!'§;
   import §2![§.§7Q§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   import §7_§.§]![§;
   import §8<§.§<!7§;
   import §=!K§.§do§;
   import §[!_§.§8U§;
   import §]k§.§'m§;
   import §]k§.§2!'§;
   import §]k§.§[!L§;
   import §^!K§.§ !$§;
   import §^!K§.§9N§;
   
   public class §?k§
   {
      
      public static const §^!#§:Boolean = true;
       
      
      private var §"!,§:§<!'§;
      
      protected var §10§:§'m§;
      
      protected var mLayers:Vector.<§,!6§>;
      
      private var §;d§:Sprite;
      
      private var §@L§:Sprite;
      
      private var §&k§:Sprite;
      
      private var §1%§:Number;
      
      private var §#I§:Number;
      
      private var §51§:Number;
      
      private var §8V§:Boolean = true;
      
      private var §3H§:Boolean = true;
      
      private var §"! §:§9N§;
      
      private var §9!j§:Number;
      
      public function §?k§(param1:String, param2:Number, param3:§<!'§, param4:Number)
      {
         this.mLayers = new Vector.<§,!6§>();
         super();
         this.§"!,§ = param3;
         this.§#I§ = 0;
         this.§51§ = 0;
         this.§1%§ = param2;
         this.§;d§ = new Sprite();
         this.§@L§ = new Sprite();
         this.§&k§ = new Sprite();
         this.§9!j§ = param4;
         this.§&A§(param1,param4);
      }
      
      public function get §7@§() : Boolean
      {
         return this.§8V§;
      }
      
      public function get §>k§() : Sprite
      {
         return this.§&k§;
      }
      
      public function get §]!E§() : Sprite
      {
         return this.§;d§;
      }
      
      public function get §=$§() : Sprite
      {
         return this.§@L§;
      }
      
      protected function get textureManager() : §<!'§
      {
         return this.§"!,§;
      }
      
      public function dispose() : void
      {
         this.§^@§();
         if(this.§;d§)
         {
            this.§;d§.dispose();
            this.§;d§ = null;
         }
         if(this.§@L§)
         {
            this.§@L§.dispose();
            this.§@L§ = null;
         }
         if(this.§&k§)
         {
            this.§&k§.dispose();
            this.§&k§ = null;
         }
      }
      
      public function §>!a§() : Boolean
      {
         return this.§3H§;
      }
      
      public function §,!7§(param1:Boolean) : void
      {
         if(this.§3H§ == param1)
         {
            return;
         }
         this.§3H§ = param1;
         if(!param1)
         {
            this.§^@§();
         }
         else
         {
            this.§&A§(this.§10§.mName,this.§9!j§);
         }
      }
      
      public function §?-§() : String
      {
         return this.§10§.§'4§;
      }
      
      private function §^@§() : void
      {
         while(this.§@L§.numChildren > 0)
         {
            this.§@L§.removeChildAt(0,true);
         }
         while(this.§;d§.numChildren > 0)
         {
            this.§;d§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§'m§, param2:String) : void
      {
      }
      
      private function §&A§(param1:String, param2:Number) : void
      {
         var _loc4_:§2!'§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§,!6§ = null;
         this.§10§ = §[!L§.§4!7§(param1);
         if(this.§10§ == null)
         {
            §<!7§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §]![§.§>,§;
            this.§10§ = §[!L§.§4!7§(param1);
         }
         this.preProcessBackground(this.§10§,param1);
         this.§;d§.y = this.§1%§;
         this.§@L§.y = this.§1%§;
         this.§&k§.y = this.§1%§;
         this.§'P§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§10§.mLayers.length)
         {
            _loc4_ = this.§10§.mLayers[_loc3_];
            if(!§do§.§@$§ || !_loc4_.§!!X§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§"!,§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§1r§)
               {
                  this.§@L§.addChild(_loc5_);
               }
               else
               {
                  this.§;d§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§'!m§)
            {
               this.§]5§(parseInt(_loc4_.§'!m§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§2!'§, param2:Sprite, param3:§<!'§, param4:Number) : §,!6§
      {
         return new §,!6§(param1,param2,param3,param4);
      }
      
      private function §'P§() : void
      {
         var _loc1_:§7Q§ = null;
         if(this.§10§.mColorSky)
         {
            this.§]5§(this.§10§.mColorSky);
         }
         if(this.§10§.§&Z§)
         {
            _loc1_ = this.§#!5§(uint(this.§10§.§&Z§));
            _loc1_.y = 0;
            this.§&k§.addChild(_loc1_);
         }
      }
      
      protected function §#!5§(param1:uint) : §7Q§
      {
         return new §7Q§(4096,4096,param1);
      }
      
      protected function §]5§(param1:int) : void
      {
         if(§do§.§4!G§)
         {
            §do§.§4!G§.color = param1;
         }
      }
      
      public function §">§(param1:String) : void
      {
         this.§^@§();
         §<!7§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§&A§(param1,this.§9!j§);
      }
      
      public function §%S§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§,!6§ = null;
         if(param1 == this.§8V§)
         {
            return;
         }
         this.§8V§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§%S§(param1);
         }
      }
      
      public function §6!_§() : void
      {
         if(§ !$§.§5!4§("CHANNEL_AMBIENT") == null || !§ !$§.§5!4§("CHANNEL_AMBIENT").§9! §())
         {
            § !$§.§-N§(this.§10§.§;!Q§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §2>§() : void
      {
         § !$§.§-u§("CHANNEL_AMBIENT");
      }
      
      public function §>!e§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§;d§.numChildren)
         {
            _loc2_ = this.§;d§.getChildAt(param1);
         }
         else if(param1 - this.§;d§.numChildren < this.§@L§.numChildren)
         {
            _loc2_ = this.§@L§.getChildAt(param1 - this.§;d§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §=6§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§#I§ = param1;
         this.§51§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§#I§,this.§51§);
               _loc3_++;
            }
         }
         if(this.§&k§ != null)
         {
            this.§&k§.scaleX = this.§&k§.scaleY = 1 / §8U§.§[!E§;
            this.§&k§.x = -§8U§.§[]§ * (1 / §8U§.§[!E§);
            this.§&k§.y = this.§1%§ - this.§51§;
         }
      }
      
      public function §;X§() : String
      {
         return this.§10§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
