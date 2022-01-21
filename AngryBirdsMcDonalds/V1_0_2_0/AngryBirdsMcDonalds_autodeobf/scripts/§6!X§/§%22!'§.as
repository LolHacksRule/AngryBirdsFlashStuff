package §6!X§
{
   import § !m§.§ !M§;
   import § !m§.§6h§;
   import §+-§.§,K§;
   import §4!$§.§<!2§;
   import §5!l§.§ !D§;
   import §5x§.§3"§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §=<§.§1+§;
   import §[_§.§2D§;
   import §]6§.§9s§;
   import §]6§.§<!P§;
   import §]6§.§<"§;
   
   public class §"!'§
   {
      
      public static const §0!"§:Boolean = true;
       
      
      private var §8!b§:§ !D§;
      
      protected var §?!c§:§9s§;
      
      protected var mLayers:Vector.<§!'§>;
      
      private var §"!A§:Sprite;
      
      private var §<!o§:Sprite;
      
      private var §4k§:Sprite;
      
      private var §0!O§:Number;
      
      private var §4L§:Number;
      
      private var §-!T§:Number;
      
      private var §[u§:Boolean = true;
      
      private var §>!0§:Boolean = true;
      
      private var §=!#§:§ !M§;
      
      private var §]=§:Number;
      
      public function §"!'§(param1:String, param2:Number, param3:§ !D§, param4:Number)
      {
         this.mLayers = new Vector.<§!'§>();
         super();
         this.§8!b§ = param3;
         this.§4L§ = 0;
         this.§-!T§ = 0;
         this.§0!O§ = param2;
         this.§"!A§ = new Sprite();
         this.§<!o§ = new Sprite();
         this.§4k§ = new Sprite();
         this.§]=§ = param4;
         this.§7E§(param1,param4);
      }
      
      public function get §7!H§() : Boolean
      {
         return this.§[u§;
      }
      
      public function get §!!R§() : Sprite
      {
         return this.§4k§;
      }
      
      public function get §+w§() : Sprite
      {
         return this.§"!A§;
      }
      
      public function get § ^§() : Sprite
      {
         return this.§<!o§;
      }
      
      protected function get textureManager() : § !D§
      {
         return this.§8!b§;
      }
      
      public function dispose() : void
      {
         this.§[!,§();
         if(this.§"!A§)
         {
            this.§"!A§.dispose();
            this.§"!A§ = null;
         }
         if(this.§<!o§)
         {
            this.§<!o§.dispose();
            this.§<!o§ = null;
         }
         if(this.§4k§)
         {
            this.§4k§.dispose();
            this.§4k§ = null;
         }
      }
      
      public function §8!B§() : Boolean
      {
         return this.§>!0§;
      }
      
      public function §>h§(param1:Boolean) : void
      {
         if(this.§>!0§ == param1)
         {
            return;
         }
         this.§>!0§ = param1;
         if(!param1)
         {
            this.§[!,§();
         }
         else
         {
            this.§7E§(this.§?!c§.mName,this.§]=§);
         }
      }
      
      public function §%E§() : String
      {
         return this.§?!c§.§`8§;
      }
      
      private function §[!,§() : void
      {
         while(this.§<!o§.numChildren > 0)
         {
            this.§<!o§.removeChildAt(0,true);
         }
         while(this.§"!A§.numChildren > 0)
         {
            this.§"!A§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§9s§, param2:String) : void
      {
      }
      
      private function §7E§(param1:String, param2:Number) : void
      {
         var _loc4_:§<!P§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§!'§ = null;
         this.§?!c§ = §<"§.§0!&§(param1);
         if(this.§?!c§ == null)
         {
            §1+§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §,K§.§9!+§;
            this.§?!c§ = §<"§.§0!&§(param1);
         }
         this.preProcessBackground(this.§?!c§,param1);
         this.§"!A§.y = this.§0!O§;
         this.§<!o§.y = this.§0!O§;
         this.§4k§.y = this.§0!O§;
         this.§7U§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!c§.mLayers.length)
         {
            _loc4_ = this.§?!c§.mLayers[_loc3_];
            if(!§<!2§.§ !p§ || !_loc4_.§3S§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§8!b§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§;!S§)
               {
                  this.§<!o§.addChild(_loc5_);
               }
               else
               {
                  this.§"!A§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§8u§)
            {
               this.§5;§(parseInt(_loc4_.§8u§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§<!P§, param2:Sprite, param3:§ !D§, param4:Number) : §!'§
      {
         return new §!'§(param1,param2,param3,param4);
      }
      
      private function §7U§() : void
      {
         var _loc1_:§3"§ = null;
         if(this.§?!c§.mColorSky)
         {
            this.§5;§(this.§?!c§.mColorSky);
         }
         if(this.§?!c§.§9!c§)
         {
            _loc1_ = this.§0!]§(uint(this.§?!c§.§9!c§));
            _loc1_.y = 0;
            this.§4k§.addChild(_loc1_);
         }
      }
      
      protected function §0!]§(param1:uint) : §3"§
      {
         return new §3"§(4096,4096,param1);
      }
      
      protected function §5;§(param1:int) : void
      {
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.color = param1;
         }
      }
      
      public function §"Y§(param1:String) : void
      {
         this.§[!,§();
         §1+§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§7E§(param1,this.§]=§);
      }
      
      public function §!C§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§!'§ = null;
         if(param1 == this.§[u§)
         {
            return;
         }
         this.§[u§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§!C§(param1);
         }
      }
      
      public function §?&§() : void
      {
         if(§6h§.§5!K§("CHANNEL_AMBIENT") == null || !§6h§.§5!K§("CHANNEL_AMBIENT").§['§())
         {
            §6h§.§-a§(this.§?!c§.§#!1§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §8!7§() : void
      {
         §6h§.§1x§("CHANNEL_AMBIENT");
      }
      
      public function §+D§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§"!A§.numChildren)
         {
            _loc2_ = this.§"!A§.getChildAt(param1);
         }
         else if(param1 - this.§"!A§.numChildren < this.§<!o§.numChildren)
         {
            _loc2_ = this.§<!o§.getChildAt(param1 - this.§"!A§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §8!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§4L§ = param1;
         this.§-!T§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§4L§,this.§-!T§);
               _loc3_++;
            }
         }
         if(this.§4k§ != null)
         {
            this.§4k§.scaleX = this.§4k§.scaleY = 1 / §2D§.§0#§;
            this.§4k§.x = -§2D§.§]!A§ * (1 / §2D§.§0#§);
            this.§4k§.y = this.§0!O§ - this.§-!T§;
         }
      }
      
      public function §'!c§() : String
      {
         return this.§?!c§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
