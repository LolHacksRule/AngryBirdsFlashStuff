package §-R§
{
   import §!_§.§7!m§;
   import §!_§.§;U§;
   import §!_§.§<C§;
   import §%%§.§3P§;
   import §'+§.§1u§;
   import §,4§.§0B§;
   import §9`§.§#U§;
   import §?!d§.§-E§;
   import §[!4§.§-#§;
   import §[!4§.§^!W§;
   import §`!n§.§ !i§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   
   public class §#4§
   {
      
      public static const §]!C§:Boolean = true;
       
      
      private var §9k§:§#U§;
      
      protected var §0`§:§<C§;
      
      protected var mLayers:Vector.<§3$§>;
      
      private var §#!]§:Sprite;
      
      private var §&4§:Sprite;
      
      private var §<!W§:Sprite;
      
      private var §+E§:Number;
      
      private var §79§:Number;
      
      private var §"!D§:Number;
      
      private var §>!?§:Boolean = true;
      
      private var §#1§:Boolean = true;
      
      private var §'B§:§^!W§;
      
      private var §42§:Number;
      
      public function §#4§(param1:String, param2:Number, param3:§#U§, param4:Number)
      {
         this.mLayers = new Vector.<§3$§>();
         super();
         this.§9k§ = param3;
         this.§79§ = 0;
         this.§"!D§ = 0;
         this.§+E§ = param2;
         this.§#!]§ = new Sprite();
         this.§&4§ = new Sprite();
         this.§<!W§ = new Sprite();
         this.§42§ = param4;
         this.§<K§(param1,param4);
      }
      
      public function get §[M§() : Boolean
      {
         return this.§>!?§;
      }
      
      public function get §?!E§() : Sprite
      {
         return this.§<!W§;
      }
      
      public function get §@F§() : Sprite
      {
         return this.§#!]§;
      }
      
      public function get §@!L§() : Sprite
      {
         return this.§&4§;
      }
      
      protected function get textureManager() : §#U§
      {
         return this.§9k§;
      }
      
      public function dispose() : void
      {
         this.§3!f§();
         if(this.§#!]§)
         {
            this.§#!]§.dispose();
            this.§#!]§ = null;
         }
         if(this.§&4§)
         {
            this.§&4§.dispose();
            this.§&4§ = null;
         }
         if(this.§<!W§)
         {
            this.§<!W§.dispose();
            this.§<!W§ = null;
         }
      }
      
      public function §%Y§() : Boolean
      {
         return this.§#1§;
      }
      
      public function §9!=§(param1:Boolean) : void
      {
         if(this.§#1§ == param1)
         {
            return;
         }
         this.§#1§ = param1;
         if(!param1)
         {
            this.§3!f§();
         }
         else
         {
            this.§<K§(this.§0`§.mName,this.§42§);
         }
      }
      
      public function §&'§() : String
      {
         return this.§0`§.§0!g§;
      }
      
      private function §3!f§() : void
      {
         while(this.§&4§.numChildren > 0)
         {
            this.§&4§.removeChildAt(0,true);
         }
         while(this.§#!]§.numChildren > 0)
         {
            this.§#!]§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§<C§, param2:String) : void
      {
      }
      
      private function §<K§(param1:String, param2:Number) : void
      {
         var _loc4_:§;U§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§3$§ = null;
         this.§0`§ = §7!m§.§;]§(param1);
         if(this.§0`§ == null)
         {
            §1u§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §0B§.§'Z§;
            this.§0`§ = §7!m§.§;]§(param1);
         }
         this.preProcessBackground(this.§0`§,param1);
         this.§#!]§.y = this.§+E§;
         this.§&4§.y = this.§+E§;
         this.§<!W§.y = this.§+E§;
         this.§3n§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§0`§.mLayers.length)
         {
            _loc4_ = this.§0`§.mLayers[_loc3_];
            if(!§3P§.§+!J§ || !_loc4_.§>T§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§9k§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§]N§)
               {
                  this.§&4§.addChild(_loc5_);
               }
               else
               {
                  this.§#!]§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§-!M§)
            {
               this.§[!6§(parseInt(_loc4_.§-!M§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§;U§, param2:Sprite, param3:§#U§, param4:Number) : §3$§
      {
         return new §3$§(param1,param2,param3,param4);
      }
      
      private function §3n§() : void
      {
         var _loc1_:§ !i§ = null;
         if(this.§0`§.mColorSky)
         {
            this.§[!6§(this.§0`§.mColorSky);
         }
         if(this.§0`§.§+!T§)
         {
            _loc1_ = this.§+!5§(uint(this.§0`§.§+!T§));
            _loc1_.y = 0;
            this.§<!W§.addChild(_loc1_);
         }
      }
      
      protected function §+!5§(param1:uint) : § !i§
      {
         return new § !i§(4096,4096,param1);
      }
      
      protected function §[!6§(param1:int) : void
      {
         if(§3P§.§6_§)
         {
            §3P§.§6_§.color = param1;
         }
      }
      
      public function §-2§(param1:String) : void
      {
         this.§3!f§();
         §1u§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§<K§(param1,this.§42§);
      }
      
      public function §95§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§3$§ = null;
         if(param1 == this.§>!?§)
         {
            return;
         }
         this.§>!?§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§95§(param1);
         }
      }
      
      public function §@!]§() : void
      {
         if(§-#§.§7]§("CHANNEL_AMBIENT") == null || !§-#§.§7]§("CHANNEL_AMBIENT").§&!H§())
         {
            §-#§.§4h§(this.§0`§.§9!!§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §9x§() : void
      {
         §-#§.§-q§("CHANNEL_AMBIENT");
      }
      
      public function §^3§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§#!]§.numChildren)
         {
            _loc2_ = this.§#!]§.getChildAt(param1);
         }
         else if(param1 - this.§#!]§.numChildren < this.§&4§.numChildren)
         {
            _loc2_ = this.§&4§.getChildAt(param1 - this.§#!]§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §5[§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§79§ = param1;
         this.§"!D§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§79§,this.§"!D§);
               _loc3_++;
            }
         }
         if(this.§<!W§ != null)
         {
            this.§<!W§.scaleX = this.§<!W§.scaleY = 1 / §-E§.§-$§;
            this.§<!W§.x = -§-E§.§`!8§ * (1 / §-E§.§-$§);
            this.§<!W§.y = this.§+E§ - this.§"!D§;
         }
      }
      
      public function §1!p§() : String
      {
         return this.§0`§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
