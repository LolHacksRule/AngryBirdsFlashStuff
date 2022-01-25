package § true§
{
   import §&C§.§0!5§;
   import §&C§.§1?§;
   import §&C§.§;D§;
   import §-!F§.§`+§;
   import §0@§.§"%§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §0i§.§4!%§;
   import §4!,§.§+f§;
   import §7! §.§4n§;
   import §]^§.§1!K§;
   import §]^§.§7G§;
   import §each §.§'!3§;
   
   public class §0O§
   {
      
      public static const §?!H§:Boolean = true;
       
      
      private var §!3§:§4n§;
      
      protected var §,!d§:§;D§;
      
      protected var mLayers:Vector.<§'8§>;
      
      private var §]n§:Sprite;
      
      private var §-Z§:Sprite;
      
      private var §1!5§:Sprite;
      
      private var § -§:Number;
      
      private var §9o§:Number;
      
      private var §>]§:Number;
      
      private var §<U§:Boolean = true;
      
      private var §+&§:Boolean = true;
      
      private var §?!@§:§1!K§;
      
      private var §^!g§:Number;
      
      public function §0O§(param1:String, param2:Number, param3:§4n§, param4:Number)
      {
         this.mLayers = new Vector.<§'8§>();
         super();
         this.§!3§ = param3;
         this.§9o§ = 0;
         this.§>]§ = 0;
         this.§ -§ = param2;
         this.§]n§ = new Sprite();
         this.§-Z§ = new Sprite();
         this.§1!5§ = new Sprite();
         this.§^!g§ = param4;
         this.§"!§(param1,param4);
      }
      
      public function get §"!<§() : Boolean
      {
         return this.§<U§;
      }
      
      public function get §]2§() : Sprite
      {
         return this.§1!5§;
      }
      
      public function get §?§() : Sprite
      {
         return this.§]n§;
      }
      
      public function get §0!q§() : Sprite
      {
         return this.§-Z§;
      }
      
      protected function get textureManager() : §4n§
      {
         return this.§!3§;
      }
      
      public function dispose() : void
      {
         this.§<H§();
         if(this.§]n§)
         {
            this.§]n§.dispose();
            this.§]n§ = null;
         }
         if(this.§-Z§)
         {
            this.§-Z§.dispose();
            this.§-Z§ = null;
         }
         if(this.§1!5§)
         {
            this.§1!5§.dispose();
            this.§1!5§ = null;
         }
      }
      
      public function §9@§() : Boolean
      {
         return this.§+&§;
      }
      
      public function §4!@§(param1:Boolean) : void
      {
         if(this.§+&§ == param1)
         {
            return;
         }
         this.§+&§ = param1;
         if(!param1)
         {
            this.§<H§();
         }
         else
         {
            this.§"!§(this.§,!d§.mName,this.§^!g§);
         }
      }
      
      public function §-p§() : String
      {
         return this.§,!d§.§5!!§;
      }
      
      private function §<H§() : void
      {
         while(this.§-Z§.numChildren > 0)
         {
            this.§-Z§.removeChildAt(0,true);
         }
         while(this.§]n§.numChildren > 0)
         {
            this.§]n§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§;D§, param2:String) : void
      {
      }
      
      private function §"!§(param1:String, param2:Number) : void
      {
         var _loc4_:§0!5§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§'8§ = null;
         this.§,!d§ = §1?§.§"i§(param1);
         if(this.§,!d§ == null)
         {
            §4!%§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §`+§.§`!m§;
            this.§,!d§ = §1?§.§"i§(param1);
         }
         this.preProcessBackground(this.§,!d§,param1);
         this.§]n§.y = this.§ -§;
         this.§-Z§.y = this.§ -§;
         this.§1!5§.y = this.§ -§;
         this.§7g§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§,!d§.mLayers.length)
         {
            _loc4_ = this.§,!d§.mLayers[_loc3_];
            if(!§'!3§.§#T§ || !_loc4_.§#s§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§!3§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§1H§)
               {
                  this.§-Z§.addChild(_loc5_);
               }
               else
               {
                  this.§]n§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§%I§)
            {
               this.§,!=§(parseInt(_loc4_.§%I§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§0!5§, param2:Sprite, param3:§4n§, param4:Number) : §'8§
      {
         return new §'8§(param1,param2,param3,param4);
      }
      
      private function §7g§() : void
      {
         var _loc1_:§"%§ = null;
         if(this.§,!d§.mColorSky)
         {
            this.§,!=§(this.§,!d§.mColorSky);
         }
         if(this.§,!d§.§!!L§)
         {
            _loc1_ = this.§6! §(uint(this.§,!d§.§!!L§));
            _loc1_.y = 0;
            this.§1!5§.addChild(_loc1_);
         }
      }
      
      protected function §6! §(param1:uint) : §"%§
      {
         return new §"%§(4096,4096,param1);
      }
      
      protected function §,!=§(param1:int) : void
      {
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.color = param1;
         }
      }
      
      public function § Z§(param1:String) : void
      {
         this.§<H§();
         §4!%§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§"!§(param1,this.§^!g§);
      }
      
      public function §8!5§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§'8§ = null;
         if(param1 == this.§<U§)
         {
            return;
         }
         this.§<U§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§8!5§(param1);
         }
      }
      
      public function §4!c§() : void
      {
         if(§7G§.§+!X§("CHANNEL_AMBIENT") == null || !§7G§.§+!X§("CHANNEL_AMBIENT").§4!V§())
         {
            §7G§.§4W§(this.§,!d§.§,P§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §?X§() : void
      {
         §7G§.§&!X§("CHANNEL_AMBIENT");
      }
      
      public function §#!2§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§]n§.numChildren)
         {
            _loc2_ = this.§]n§.getChildAt(param1);
         }
         else if(param1 - this.§]n§.numChildren < this.§-Z§.numChildren)
         {
            _loc2_ = this.§-Z§.getChildAt(param1 - this.§]n§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function § !l§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§9o§ = param1;
         this.§>]§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§9o§,this.§>]§);
               _loc3_++;
            }
         }
         if(this.§1!5§ != null)
         {
            this.§1!5§.scaleX = this.§1!5§.scaleY = 1 / §+f§.§1!m§;
            this.§1!5§.x = -§+f§.§9!W§ * (1 / §+f§.§1!m§);
            this.§1!5§.y = this.§ -§ - this.§>]§;
         }
      }
      
      public function §=z§() : String
      {
         return this.§,!d§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
