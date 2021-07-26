package §,#,§
{
   import §7#$§.§6"]§;
   import §7#$§.§]#q§;
   import §8#K§.§'#_§;
   import §9!o§.§6Z§;
   import §9!o§.§;"v§;
   
   public class §+!^§ extends §7Y§
   {
       
      
      protected var §7"Z§:§'#_§;
      
      protected var §7!R§:Vector.<String>;
      
      public function §+!^§(param1:§]#q§, param2:§'#_§)
      {
         this.§7!R§ = new Vector.<String>();
         this.§7"Z§ = param2;
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
               this.§7!R§.push(§3"t§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§6"]§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §6"]§.§%!B§(§3"t§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §;!F§() : int
      {
         return this.§7!R§.length;
      }
      
      public function §0t§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§7!R§.length)
         {
            return this.§7!R§[param1];
         }
         return null;
      }
      
      public function §`!I§() : String
      {
         return §3"t§("damagefactors.lua","core");
      }
      
      public function §`!N§() : String
      {
         return §3"t§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§;"v§) : void
      {
         var _loc3_:§6Z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§<!C§)
         {
            _loc3_ = param1.§>#^§(_loc2_);
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
