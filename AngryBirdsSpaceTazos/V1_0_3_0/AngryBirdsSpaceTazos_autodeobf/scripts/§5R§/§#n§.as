package §5R§
{
   import §4",§.§,!j§;
   import §4",§.§;"%§;
   import §6!M§.§3Y§;
   import §>"$§.§'!u§;
   import §>"$§.§0!!§;
   
   public class §#n§ extends §0!P§
   {
       
      
      protected var §2!?§:§3Y§;
      
      protected var §%!f§:Vector.<String>;
      
      public function §#n§(param1:§,!j§, param2:§3Y§)
      {
         this.§%!f§ = new Vector.<String>();
         this.§2!?§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         super.initializeFile(param1);
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.initializeLevelLuaFile(_loc4_,param1);
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0)
            {
               this.§%!f§.push(§;"C§(param1));
            }
         }
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§;"%§ = null;
         if(!§]m§.getLevelForId(param1))
         {
            _loc3_ = §;"%§.§]!]§(§;"C§(param2));
            _loc3_.name = param1;
            §]m§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §[@§() : int
      {
         return this.§%!f§.length;
      }
      
      public function §2!g§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§%!f§.length)
         {
            return this.§%!f§[param1];
         }
         return null;
      }
      
      public function §="8§() : String
      {
         return §;"C§("damagefactors.lua","core");
      }
      
      public function §?!w§() : String
      {
         return §;"C§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§0!!§) : void
      {
         var _loc3_:§'!u§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§4j§)
         {
            _loc3_ = param1.§-!#§(_loc2_);
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
