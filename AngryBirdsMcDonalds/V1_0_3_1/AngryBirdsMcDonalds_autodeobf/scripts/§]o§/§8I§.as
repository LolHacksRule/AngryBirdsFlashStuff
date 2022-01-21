package §]o§
{
   import § !%§.§7!>§;
   import § %§.§`M§;
   import § 6§.§=e§;
   import § 6§.§^;§;
   import § 6§.§`!P§;
   import §&c§.§2!]§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   import §5K§.§[C§;
   import §?!g§.§ !d§;
   import §?!g§.§-!B§;
   import §^U§.§3$§;
   import §finally§.§@z§;
   
   public class §8I§
   {
      
      public static const §2@§:Boolean = true;
       
      
      private var §9M§:§7!>§;
      
      protected var §'0§:§`!P§;
      
      protected var mLayers:Vector.<§=1§>;
      
      private var §=c§:Sprite;
      
      private var §1!h§:Sprite;
      
      private var §=!B§:Sprite;
      
      private var §-!C§:Number;
      
      private var §&U§:Number;
      
      private var §=!X§:Number;
      
      private var §;V§:Boolean = true;
      
      private var §#!+§:Boolean = true;
      
      private var §=!P§:§-!B§;
      
      private var §>!@§:Number;
      
      public function §8I§(param1:String, param2:Number, param3:§7!>§, param4:Number)
      {
         this.mLayers = new Vector.<§=1§>();
         super();
         this.§9M§ = param3;
         this.§&U§ = 0;
         this.§=!X§ = 0;
         this.§-!C§ = param2;
         this.§=c§ = new Sprite();
         this.§1!h§ = new Sprite();
         this.§=!B§ = new Sprite();
         this.§>!@§ = param4;
         this.§4!O§(param1,param4);
      }
      
      public function get §]e§() : Boolean
      {
         return this.§;V§;
      }
      
      public function get §8! §() : Sprite
      {
         return this.§=!B§;
      }
      
      public function get §41§() : Sprite
      {
         return this.§=c§;
      }
      
      public function get §;B§() : Sprite
      {
         return this.§1!h§;
      }
      
      protected function get textureManager() : §7!>§
      {
         return this.§9M§;
      }
      
      public function dispose() : void
      {
         this.§^!e§();
         if(this.§=c§)
         {
            this.§=c§.dispose();
            this.§=c§ = null;
         }
         if(this.§1!h§)
         {
            this.§1!h§.dispose();
            this.§1!h§ = null;
         }
         if(this.§=!B§)
         {
            this.§=!B§.dispose();
            this.§=!B§ = null;
         }
      }
      
      public function §!I§() : Boolean
      {
         return this.§#!+§;
      }
      
      public function §0f§(param1:Boolean) : void
      {
         if(this.§#!+§ == param1)
         {
            return;
         }
         this.§#!+§ = param1;
         if(!param1)
         {
            this.§^!e§();
         }
         else
         {
            this.§4!O§(this.§'0§.mName,this.§>!@§);
         }
      }
      
      public function §`!@§() : String
      {
         return this.§'0§.§1r§;
      }
      
      private function §^!e§() : void
      {
         while(this.§1!h§.numChildren > 0)
         {
            this.§1!h§.removeChildAt(0,true);
         }
         while(this.§=c§.numChildren > 0)
         {
            this.§=c§.removeChildAt(0,true);
         }
         while(this.mLayers.length > 0)
         {
            this.mLayers.pop().dispose();
         }
      }
      
      protected function preProcessBackground(param1:§`!P§, param2:String) : void
      {
      }
      
      private function §4!O§(param1:String, param2:Number) : void
      {
         var _loc4_:§=e§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§=1§ = null;
         this.§'0§ = §^;§.§%!F§(param1);
         if(this.§'0§ == null)
         {
            §[C§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §@z§.§4d§;
            this.§'0§ = §^;§.§%!F§(param1);
         }
         this.preProcessBackground(this.§'0§,param1);
         this.§=c§.y = this.§-!C§;
         this.§1!h§.y = this.§-!C§;
         this.§=!B§.y = this.§-!C§;
         this.§8,§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'0§.mLayers.length)
         {
            _loc4_ = this.§'0§.mLayers[_loc3_];
            if(!§`M§.§#z§ || !_loc4_.§;!'§)
            {
               _loc5_ = new Sprite();
               _loc6_ = this.newLevelBackgroundLayer(_loc4_,_loc5_,this.§9M§,param2);
               this.mLayers.push(_loc6_);
               if(_loc6_.§[-§)
               {
                  this.§1!h§.addChild(_loc5_);
               }
               else
               {
                  this.§=c§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§=!-§)
            {
               this.§0Y§(parseInt(_loc4_.§=!-§,16));
            }
            _loc3_++;
         }
      }
      
      protected function newLevelBackgroundLayer(param1:§=e§, param2:Sprite, param3:§7!>§, param4:Number) : §=1§
      {
         return new §=1§(param1,param2,param3,param4);
      }
      
      private function §8,§() : void
      {
         var _loc1_:§2!]§ = null;
         if(this.§'0§.mColorSky)
         {
            this.§0Y§(this.§'0§.mColorSky);
         }
         if(this.§'0§.§,!1§)
         {
            _loc1_ = this.§=q§(uint(this.§'0§.§,!1§));
            _loc1_.y = 0;
            this.§=!B§.addChild(_loc1_);
         }
      }
      
      protected function §=q§(param1:uint) : §2!]§
      {
         return new §2!]§(4096,4096,param1);
      }
      
      protected function §0Y§(param1:int) : void
      {
         if(§`M§.§93§)
         {
            §`M§.§93§.color = param1;
         }
      }
      
      public function §`X§(param1:String) : void
      {
         this.§^!e§();
         §[C§.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§4!O§(param1,this.§>!@§);
      }
      
      public function §">§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:§=1§ = null;
         if(param1 == this.§;V§)
         {
            return;
         }
         this.§;V§ = param1;
         for each(_loc3_ in this.mLayers)
         {
            _loc3_.§">§(param1);
         }
      }
      
      public function §?!K§() : void
      {
         if(§ !d§.§ P§("CHANNEL_AMBIENT") == null || !§ !d§.§ P§("CHANNEL_AMBIENT").§8!N§())
         {
            § !d§.§-h§(this.§'0§.§0!3§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §!!B§() : void
      {
         § !d§.§+'§("CHANNEL_AMBIENT");
      }
      
      public function §!D§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§=c§.numChildren)
         {
            _loc2_ = this.§=c§.getChildAt(param1);
         }
         else if(param1 - this.§=c§.numChildren < this.§1!h§.numChildren)
         {
            _loc2_ = this.§1!h§.getChildAt(param1 - this.§=c§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §-B§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§&U§ = param1;
         this.§=!X§ = param2;
         if(this.mLayers != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.mLayers.length)
            {
               this.mLayers[_loc3_].setSideScroll(this.§&U§,this.§=!X§);
               _loc3_++;
            }
         }
         if(this.§=!B§ != null)
         {
            this.§=!B§.scaleX = this.§=!B§.scaleY = 1 / §3$§.§?!=§;
            this.§=!B§.x = -§3$§.§2!d§ * (1 / §3$§.§?!=§);
            this.§=!B§.y = this.§-!C§ - this.§=!X§;
         }
      }
      
      public function §,T§() : String
      {
         return this.§'0§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
