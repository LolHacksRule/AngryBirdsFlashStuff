package §%!P§
{
   import §1z§.§!P§;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   import §;!^§.§9l§;
   import §;!^§.§;!f§;
   
   public class §-!y§ extends §;"H§
   {
       
      
      protected var §!d§:§[8§;
      
      protected var §#!m§:Vector.<String>;
      
      public function §-!y§(param1:§^!@§, param2:§[8§)
      {
         this.§#!m§ = new Vector.<String>();
         this.§!d§ = param2;
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
               this.§#!m§.push(§9!=§(param1));
            }
         }
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§!P§ = null;
         if(!§#"=§.getLevelForId(param1))
         {
            _loc3_ = §!P§.§&!,§(§9!=§(param2));
            _loc3_.name = param1;
            §#"=§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §"!E§() : int
      {
         return this.§#!m§.length;
      }
      
      public function §;!y§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§#!m§.length)
         {
            return this.§#!m§[param1];
         }
         return null;
      }
      
      public function §[!x§() : String
      {
         return §9!=§("damagefactors.lua","core");
      }
      
      public function §<!§() : String
      {
         return §9!=§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§;!f§) : void
      {
         var _loc3_:§9l§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§2">§)
         {
            _loc3_ = param1.§5"D§(_loc2_);
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
