package §&"J§
{
   import §7"&§.§2>§;
   import §?$9§.§3#z§;
   import §?$9§.§7"H§;
   import §@#§.§6z§;
   import §@#§.§^#Q§;
   
   public class §"X§ extends §4b§
   {
       
      
      protected var § "G§:§2>§;
      
      protected var §+"0§:Vector.<String>;
      
      public function §"X§(param1:§^#Q§, param2:§2>§)
      {
         this.§+"0§ = new Vector.<String>();
         this.§ "G§ = param2;
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
               this.§+"0§.push(§2#[§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§6z§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §6z§.§6#]§(§2#[§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §^"c§() : int
      {
         return this.§+"0§.length;
      }
      
      public function §5!k§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§+"0§.length)
         {
            return this.§+"0§[param1];
         }
         return null;
      }
      
      public function §1%§() : String
      {
         return §2#[§("damagefactors.lua","core");
      }
      
      public function §##<§() : String
      {
         return §2#[§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§7"H§) : void
      {
         var _loc3_:§3#z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§"J§)
         {
            _loc3_ = param1.§`!v§(_loc2_);
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
