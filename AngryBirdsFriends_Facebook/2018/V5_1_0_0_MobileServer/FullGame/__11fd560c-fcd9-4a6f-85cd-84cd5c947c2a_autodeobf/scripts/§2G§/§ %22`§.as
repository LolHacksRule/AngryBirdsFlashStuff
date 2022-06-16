package §2G§
{
   import §8"L§.§[t§;
   import §;$3§.§5$>§;
   import §;$3§.§8=§;
   import §?"#§.§#$5§;
   import §?"#§.§=!I§;
   
   public class § "`§ extends §2!2§
   {
       
      
      protected var §<"a§:§[t§;
      
      protected var §<g§:Vector.<String>;
      
      public function § "`§(param1:§8=§, param2:§[t§)
      {
         this.§<g§ = new Vector.<String>();
         this.§<"a§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.initializeLevelLuaFile(_loc4_,param1);
            return;
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0 && param1.indexOf("bosses") < 0)
            {
               this.§<g§.push(§ #'§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§5$>§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §5$>§.§%"S§(§ #'§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §!$7§() : int
      {
         return this.§<g§.length;
      }
      
      public function §'!#§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§<g§.length)
         {
            return this.§<g§[param1];
         }
         return null;
      }
      
      public function §-C§() : String
      {
         return § #'§("damagefactors.lua","core");
      }
      
      public function §@!9§() : String
      {
         return § #'§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§=!I§) : void
      {
         var _loc3_:§#$5§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§'#w§)
         {
            _loc3_ = param1.§,5§(_loc2_);
            if(_loc3_.name.indexOf("TEXTURE_") == 0)
            {
               _loc3_.name = "INGAME_" + _loc3_.name;
            }
            _loc2_++;
         }
         super.addSpriteSheet(param1);
      }
   }
}
