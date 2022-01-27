package §-s§
{
   import §!!0§.§?!j§;
   import §!!0§.SoundEngine;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §5u§.§[!,§;
   import §7!>§.Starling;
   import §<u§.Log;
   import §>!_§.LevelModel;
   import §>=§.§"_§;
   import §>=§.LevelThemeBackground;
   import §>=§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §`!,§:Boolean = true;
       
      
      private var §7!`§:TextureManager;
      
      private var §#@§:LevelThemeBackground;
      
      private var §'!1§:Vector.<LevelBackgroundLayer>;
      
      private var §4!§:Sprite;
      
      private var §&6§:Sprite;
      
      private var §2!O§:Sprite;
      
      private var §"k§:Number;
      
      private var §12§:Number;
      
      private var §='§:Number;
      
      private var §1T§:Boolean = true;
      
      private var §#r§:Boolean = true;
      
      private var § 0§:§?!j§;
      
      private var §<!_§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         this.§'!1§ = new Vector.<LevelBackgroundLayer>();
         super();
         this.§7!`§ = param3;
         this.§12§ = 0;
         this.§='§ = 0;
         this.§"k§ = param2;
         this.§4!§ = new Sprite();
         this.§&6§ = new Sprite();
         this.§2!O§ = new Sprite();
         this.§<!_§ = param4;
         this.§2K§(param1,param4);
      }
      
      public function get §2d§() : Boolean
      {
         return this.§1T§;
      }
      
      public function get §1!W§() : Sprite
      {
         return this.§2!O§;
      }
      
      public function get §3!I§() : Sprite
      {
         return this.§4!§;
      }
      
      public function get §`!d§() : Sprite
      {
         return this.§&6§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function dispose() : void
      {
         this.§"a§();
         if(this.§4!§)
         {
            this.§4!§.dispose();
            this.§4!§ = null;
         }
         if(this.§&6§)
         {
            this.§&6§.dispose();
            this.§&6§ = null;
         }
         if(this.§2!O§)
         {
            this.§2!O§.dispose();
            this.§2!O§ = null;
         }
      }
      
      public function §,N§() : Boolean
      {
         return this.§#r§;
      }
      
      public function §#!$§(param1:Boolean) : void
      {
         if(this.§#r§ == param1)
         {
            return;
         }
         this.§#r§ = param1;
         if(!param1)
         {
            this.§"a§();
         }
         else
         {
            this.§2K§(this.§#@§.mName,this.§<!_§);
         }
      }
      
      public function §`![§() : String
      {
         return this.§#@§.§;-§;
      }
      
      private function §"a§() : void
      {
         while(this.§&6§.numChildren > 0)
         {
            this.§&6§.removeChildAt(0,true);
         }
         while(this.§4!§.numChildren > 0)
         {
            this.§4!§.removeChildAt(0,true);
         }
         while(this.§'!1§.length > 0)
         {
            this.§'!1§.pop().dispose();
         }
      }
      
      private function §2K§(param1:String, param2:Number) : void
      {
         var _loc4_:§"_§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         this.§#@§ = LevelThemeBackgroundManager.§#!W§(param1);
         if(this.§#@§ == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = LevelModel.§9J§;
            this.§#@§ = LevelThemeBackgroundManager.§#!W§(param1);
         }
         this.§4!§.y = this.§"k§;
         this.§&6§.y = this.§"k§;
         this.§2!O§.y = this.§"k§;
         this.§%Z§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§#@§.§'!1§.length)
         {
            _loc4_ = this.§#@§.§'!1§[_loc3_];
            if(!Starling.isSoftware || !_loc4_.§7,§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new LevelBackgroundLayer(_loc4_,_loc5_,this.§7!`§,param2);
               this.§'!1§.push(_loc6_);
               if(_loc6_.§^!A§)
               {
                  this.§&6§.addChild(_loc5_);
               }
               else
               {
                  this.§4!§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§6#§)
            {
               this.§3P§(parseInt(_loc4_.§6#§,16));
            }
            _loc3_++;
         }
      }
      
      private function §%Z§() : void
      {
         var _loc1_:§6!Y§ = null;
         if(this.§#@§.§!P§)
         {
            this.§3P§(this.§#@§.§!P§);
         }
         if(this.§#@§.§%9§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§#@§.§%9§));
            _loc1_.y = 0;
            this.§2!O§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §6!Y§
      {
         return new §6!Y§(4096,4096,param1);
      }
      
      private function §3P§(param1:int) : void
      {
         if(Starling.§7!+§)
         {
            Starling.§7!+§.color = param1;
         }
      }
      
      public function §%w§(param1:String) : void
      {
         this.§"a§();
         Log.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§2K§(param1,this.§<!_§);
      }
      
      public function §^!D§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:LevelBackgroundLayer = null;
         if(param1 == this.§1T§)
         {
            return;
         }
         this.§1T§ = param1;
         for each(_loc3_ in this.§'!1§)
         {
            _loc3_.§^!D§(param1);
         }
      }
      
      public function §8a§() : void
      {
         if(SoundEngine.§'!'§("CHANNEL_AMBIENT") == null || !SoundEngine.§'!'§("CHANNEL_AMBIENT").§?§())
         {
            SoundEngine.§-!h§(this.§#@§.§ a§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §^&§() : void
      {
         SoundEngine.§]!&§("CHANNEL_AMBIENT");
      }
      
      public function §2H§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§4!§.numChildren)
         {
            _loc2_ = this.§4!§.getChildAt(param1);
         }
         else if(param1 - this.§4!§.numChildren < this.§&6§.numChildren)
         {
            _loc2_ = this.§&6§.getChildAt(param1 - this.§4!§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§12§ = param1;
         this.§='§ = param2;
         if(this.§'!1§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§'!1§.length)
            {
               this.§'!1§[_loc3_].setSideScroll(this.§12§,this.§='§);
               _loc3_++;
            }
         }
         if(this.§2!O§ != null)
         {
            this.§2!O§.scaleX = this.§2!O§.scaleY = 1 / §[!,§.§ !7§;
            this.§2!O§.x = -§[!,§.§[!^§ * (1 / §[!,§.§ !7§);
            this.§2!O§.y = this.§"k§ - this.§='§;
         }
      }
      
      public function §>6§() : String
      {
         return this.§#@§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
