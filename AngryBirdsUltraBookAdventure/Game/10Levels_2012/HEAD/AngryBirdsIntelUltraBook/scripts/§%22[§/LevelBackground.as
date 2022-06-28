package §"[§
{
   import §"$§.Starling;
   import §#!X§.LevelModel;
   import §#y§.§0!D§;
   import §'N§.Log;
   import §1!&§.§!!9§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.§%[§;
   import §3!j§.SoundEngine;
   import §8!?§.TextureManager;
   import §[a§.§#d§;
   import §[a§.LevelThemeBackground;
   import §[a§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §[!j§:Boolean = true;
       
      
      private var §`_§:TextureManager;
      
      private var §%&§:LevelThemeBackground;
      
      private var §<!3§:Vector.<LevelBackgroundLayer>;
      
      private var §@M§:Sprite;
      
      private var § j§:Sprite;
      
      private var §7!<§:Sprite;
      
      private var §%!>§:Number;
      
      private var §`0§:Number;
      
      private var §!!,§:Number;
      
      private var §`-§:Boolean = true;
      
      private var §`2§:Boolean = true;
      
      private var §]!E§:§%[§;
      
      private var §0!`§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         this.§<!3§ = new Vector.<LevelBackgroundLayer>();
         super();
         this.§`_§ = param3;
         this.§`0§ = 0;
         this.§!!,§ = 0;
         this.§%!>§ = param2;
         this.§@M§ = new Sprite();
         this.§ j§ = new Sprite();
         this.§7!<§ = new Sprite();
         this.§0!`§ = param4;
         this.§>k§(param1,param4);
      }
      
      public function get §<$§() : Boolean
      {
         return this.§`-§;
      }
      
      public function get §0I§() : Sprite
      {
         return this.§7!<§;
      }
      
      public function get §+!I§() : Sprite
      {
         return this.§@M§;
      }
      
      public function get § -§() : Sprite
      {
         return this.§ j§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function dispose() : void
      {
         this.§8S§();
         if(this.§@M§)
         {
            this.§@M§.dispose();
            this.§@M§ = null;
         }
         if(this.§ j§)
         {
            this.§ j§.dispose();
            this.§ j§ = null;
         }
         if(this.§7!<§)
         {
            this.§7!<§.dispose();
            this.§7!<§ = null;
         }
      }
      
      public function §=m§() : Boolean
      {
         return this.§`2§;
      }
      
      public function §@!F§(param1:Boolean) : void
      {
         if(this.§`2§ == param1)
         {
            return;
         }
         this.§`2§ = param1;
         if(!param1)
         {
            this.§8S§();
         }
         else
         {
            this.§>k§(this.§%&§.mName,this.§0!`§);
         }
      }
      
      public function §[!O§() : String
      {
         return this.§%&§.§9j§;
      }
      
      private function §8S§() : void
      {
         while(this.§ j§.numChildren > 0)
         {
            this.§ j§.removeChildAt(0,true);
         }
         while(this.§@M§.numChildren > 0)
         {
            this.§@M§.removeChildAt(0,true);
         }
         while(this.§<!3§.length > 0)
         {
            this.§<!3§.pop().dispose();
         }
      }
      
      private function §>k§(param1:String, param2:Number) : void
      {
         var _loc4_:§#d§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         this.§%&§ = LevelThemeBackgroundManager.§"!f§(param1);
         if(this.§%&§ == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = LevelModel.§!Z§;
            this.§%&§ = LevelThemeBackgroundManager.§"!f§(param1);
         }
         this.§@M§.y = this.§%!>§;
         this.§ j§.y = this.§%!>§;
         this.§7!<§.y = this.§%!>§;
         this.§`+§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§%&§.§<!3§.length)
         {
            _loc4_ = this.§%&§.§<!3§[_loc3_];
            if(!Starling.isSoftware || !_loc4_.§]'§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new LevelBackgroundLayer(_loc4_,_loc5_,this.§`_§,param2);
               this.§<!3§.push(_loc6_);
               if(_loc6_.§,p§)
               {
                  this.§ j§.addChild(_loc5_);
               }
               else
               {
                  this.§@M§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§1?§)
            {
               this.§#!O§(parseInt(_loc4_.§1?§,16));
            }
            _loc3_++;
         }
      }
      
      private function §`+§() : void
      {
         var _loc1_:§!!9§ = null;
         if(this.§%&§.§2U§)
         {
            this.§#!O§(this.§%&§.§2U§);
         }
         if(this.§%&§.§0#§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§%&§.§0#§));
            _loc1_.y = 0;
            this.§7!<§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §!!9§
      {
         return new §!!9§(4096,4096,param1);
      }
      
      private function §#!O§(param1:int) : void
      {
         if(Starling.§'!A§)
         {
            Starling.§'!A§.color = param1;
         }
      }
      
      public function § >§(param1:String) : void
      {
         this.§8S§();
         Log.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§>k§(param1,this.§0!`§);
      }
      
      public function §]z§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:LevelBackgroundLayer = null;
         if(param1 == this.§`-§)
         {
            return;
         }
         this.§`-§ = param1;
         for each(_loc3_ in this.§<!3§)
         {
            _loc3_.§]z§(param1);
         }
      }
      
      public function §9J§() : void
      {
         if(SoundEngine.§while§("CHANNEL_AMBIENT") == null || !SoundEngine.§while§("CHANNEL_AMBIENT").§9X§())
         {
            SoundEngine.§`B§(this.§%&§.§2!"§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §1r§() : void
      {
         SoundEngine.§5v§("CHANNEL_AMBIENT");
      }
      
      public function §]!!§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§@M§.numChildren)
         {
            _loc2_ = this.§@M§.getChildAt(param1);
         }
         else if(param1 - this.§@M§.numChildren < this.§ j§.numChildren)
         {
            _loc2_ = this.§ j§.getChildAt(param1 - this.§@M§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§`0§ = param1;
         this.§!!,§ = param2;
         if(this.§<!3§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§<!3§.length)
            {
               this.§<!3§[_loc3_].setSideScroll(this.§`0§,this.§!!,§);
               _loc3_++;
            }
         }
         if(this.§7!<§ != null)
         {
            this.§7!<§.scaleX = this.§7!<§.scaleY = 1 / §0!D§.§4M§;
            this.§7!<§.x = -§0!D§.§#`§ * (1 / §0!D§.§4M§);
            this.§7!<§.y = this.§%!>§ - this.§!!,§;
         }
      }
      
      public function §-!^§() : String
      {
         return this.§%&§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
