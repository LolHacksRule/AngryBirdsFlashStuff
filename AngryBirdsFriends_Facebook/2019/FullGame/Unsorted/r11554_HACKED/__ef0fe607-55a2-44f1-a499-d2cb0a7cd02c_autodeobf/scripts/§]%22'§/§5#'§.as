package §]"'§
{
   import §"$=§.§'![§;
   import §"$=§.§?#Y§;
   import §="l§.§"!t§;
   import §="l§.§;#f§;
   import §?§.§?!e§;
   
   public class §5#'§ extends §5$$§
   {
       
      
      protected var §`!2§:§?!e§;
      
      protected var §7a§:Vector.<String>;
      
      public function §5#'§(param1:§'![§, param2:§?!e§)
      {
         this.§7a§ = new Vector.<String>();
         this.§`!2§ = param2;
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
               this.§7a§.push(§&"P§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§?#Y§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §?#Y§.§>j§(§&"P§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §8#=§() : int
      {
         return this.§7a§.length;
      }
      
      public function §>"D§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§7a§.length)
         {
            return this.§7a§[param1];
         }
         return null;
      }
      
      public function §-q§() : String
      {
         return §&"P§("damagefactors.lua","core");
      }
      
      public function §-+§() : String
      {
         return §&"P§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§;#f§) : void
      {
         var _loc3_:§"!t§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§%!i§)
         {
            _loc3_ = param1.§&!o§(_loc2_);
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
