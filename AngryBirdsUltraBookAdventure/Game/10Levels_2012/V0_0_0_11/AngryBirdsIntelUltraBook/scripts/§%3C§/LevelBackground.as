package §<§
{
   import §"L§.LevelModel;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §<!j§.§%!-§;
   import §=?§.§7[§;
   import §=?§.SoundEngine;
   import §[m§.§#c§;
   import §[m§.LevelThemeBackground;
   import §[m§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §'G§:Boolean = true;
       
      
      private var §6! §:TextureManager;
      
      private var § !!§:LevelThemeBackground;
      
      private var §1!,§:Vector.<LevelBackgroundLayer>;
      
      private var § J§:Sprite;
      
      private var §%%§:Sprite;
      
      private var §"N§:Sprite;
      
      private var §44§:Number;
      
      private var §5v§:Number;
      
      private var §-!N§:Number;
      
      private var §6!]§:Boolean = true;
      
      private var §8!J§:Boolean = true;
      
      private var § !$§:§7[§;
      
      private var §5!4§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         this.§1!,§ = new Vector.<LevelBackgroundLayer>();
         super();
         this.§6! § = param3;
         this.§5v§ = 0;
         this.§-!N§ = 0;
         this.§44§ = param2;
         this.§ J§ = new Sprite();
         this.§%%§ = new Sprite();
         this.§"N§ = new Sprite();
         this.§5!4§ = param4;
         this.§;^§(param1,param4);
      }
      
      public function get §99§() : Boolean
      {
         return this.§6!]§;
      }
      
      public function get §@![§() : Sprite
      {
         return this.§"N§;
      }
      
      public function get §4a§() : Sprite
      {
         return this.§ J§;
      }
      
      public function get §1!g§() : Sprite
      {
         return this.§%%§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function dispose() : void
      {
         this.§8A§();
         if(this.§ J§)
         {
            this.§ J§.dispose();
            this.§ J§ = null;
         }
         if(this.§%%§)
         {
            this.§%%§.dispose();
            this.§%%§ = null;
         }
         if(this.§"N§)
         {
            this.§"N§.dispose();
            this.§"N§ = null;
         }
      }
      
      public function §5>§() : Boolean
      {
         return this.§8!J§;
      }
      
      public function §,>§(param1:Boolean) : void
      {
         if(this.§8!J§ == param1)
         {
            return;
         }
         this.§8!J§ = param1;
         if(!param1)
         {
            this.§8A§();
         }
         else
         {
            this.§;^§(this.§ !!§.mName,this.§5!4§);
         }
      }
      
      public function § #§() : String
      {
         return this.§ !!§.§>!F§;
      }
      
      private function §8A§() : void
      {
         while(this.§%%§.numChildren > 0)
         {
            this.§%%§.removeChildAt(0,true);
         }
         while(this.§ J§.numChildren > 0)
         {
            this.§ J§.removeChildAt(0,true);
         }
         while(this.§1!,§.length > 0)
         {
            this.§1!,§.pop().dispose();
         }
      }
      
      private function §;^§(param1:String, param2:Number) : void
      {
         var _loc4_:§#c§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
         if(this.§ !!§ == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = LevelModel.§-!Q§;
            this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
         }
         this.§ J§.y = this.§44§;
         this.§%%§.y = this.§44§;
         this.§"N§.y = this.§44§;
         this.§+@§();
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !!§.§1!,§.length)
         {
            _loc4_ = this.§ !!§.§1!,§[_loc3_];
            if(!Starling.isSoftware || !_loc4_.§#!E§)
            {
               _loc5_ = new Sprite();
               _loc6_ = new LevelBackgroundLayer(_loc4_,_loc5_,this.§6! §,param2);
               this.§1!,§.push(_loc6_);
               if(_loc6_.§%H§)
               {
                  this.§%%§.addChild(_loc5_);
               }
               else
               {
                  this.§ J§.addChild(_loc5_);
               }
            }
            else if(_loc4_.§,!1§)
            {
               this.§ !R§(parseInt(_loc4_.§,!1§,16));
            }
            _loc3_++;
         }
      }
      
      private function §+@§() : void
      {
         var _loc1_:§3x§ = null;
         if(this.§ !!§.§52§)
         {
            this.§ !R§(this.§ !!§.§52§);
         }
         if(this.§ !!§.§ V§)
         {
            _loc1_ = this.createGroundQuad(uint(this.§ !!§.§ V§));
            _loc1_.y = 0;
            this.§"N§.addChild(_loc1_);
         }
      }
      
      protected function createGroundQuad(param1:uint) : §3x§
      {
         return new §3x§(4096,4096,param1);
      }
      
      private function § !R§(param1:int) : void
      {
         if(Starling.§!!F§)
         {
            Starling.§!!F§.color = param1;
         }
      }
      
      public function § ![§(param1:String) : void
      {
         this.§8A§();
         Log.log("Switch background! NEW BACKGROUND NAME = " + param1);
         this.§;^§(param1,this.§5!4§);
      }
      
      public function §^!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:LevelBackgroundLayer = null;
         if(param1 == this.§6!]§)
         {
            return;
         }
         this.§6!]§ = param1;
         for each(_loc3_ in this.§1!,§)
         {
            _loc3_.§^!Y§(param1);
         }
      }
      
      public function §5T§() : void
      {
         if(SoundEngine.§!_§("CHANNEL_AMBIENT") == null || !SoundEngine.§!_§("CHANNEL_AMBIENT").§ O§())
         {
            SoundEngine.§9!X§(this.§ !!§.§?!R§,"CHANNEL_AMBIENT",999);
         }
      }
      
      public function §"d§() : void
      {
         SoundEngine.§'!B§("CHANNEL_AMBIENT");
      }
      
      public function §;!c§(param1:Number) : void
      {
         var _loc2_:DisplayObject = null;
         if(param1 < this.§ J§.numChildren)
         {
            _loc2_ = this.§ J§.getChildAt(param1);
         }
         else if(param1 - this.§ J§.numChildren < this.§%%§.numChildren)
         {
            _loc2_ = this.§%%§.getChildAt(param1 - this.§ J§.numChildren);
         }
         if(_loc2_)
         {
            _loc2_.visible = !_loc2_.visible;
         }
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         this.§5v§ = param1;
         this.§-!N§ = param2;
         if(this.§1!,§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1!,§.length)
            {
               this.§1!,§[_loc3_].setSideScroll(this.§5v§,this.§-!N§);
               _loc3_++;
            }
         }
         if(this.§"N§ != null)
         {
            this.§"N§.scaleX = this.§"N§.scaleY = 1 / §%!-§.§?!I§;
            this.§"N§.x = -§%!-§.§^6§ * (1 / §%!-§.§?!I§);
            this.§"N§.y = this.§44§ - this.§-!N§;
         }
      }
      
      public function §=z§() : String
      {
         return this.§ !!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
