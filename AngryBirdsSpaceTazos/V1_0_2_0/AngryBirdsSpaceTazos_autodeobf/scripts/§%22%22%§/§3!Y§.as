package §""%§
{
   import §;!0§.§!!#§;
   import §;!0§.;
   import §;"=§.§6!<§;
   
   public class §3!Y§ extends §"!@§
   {
       
      
      protected var §@1§:§6!<§;
      
      protected var §7+§:Vector.<String>;
      
      public function §3!Y§(param1:§#2§, param2:§6!<§)
      {
         this.§7+§ = new Vector.<String>();
         this.§@1§ = param2;
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
               this.§7+§.push(§;9§(param1));
            }
         }
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§!!#§ = null;
         if(!§,W§.getLevelForId(param1))
         {
            _loc3_ = §!!#§.§4!p§(§;9§(param2));
            _loc3_.name = param1;
            §,W§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §0!v§() : int
      {
         return this.§7+§.length;
      }
      
      public function §#!k§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§7+§.length)
         {
            return this.§7+§[param1];
         }
         return null;
      }
      
      public function §0"2§() : String
      {
         return §;9§("damagefactors.lua","core");
      }
      
      public function §1!S§() : String
      {
         return §;9§("materials.lua","core");
      }
   }
}
