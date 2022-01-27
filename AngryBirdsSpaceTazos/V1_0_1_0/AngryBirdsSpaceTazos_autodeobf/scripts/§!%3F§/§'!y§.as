package §!?§
{
   import §"!&§.§8"F§;
   import §`!j§.§2!7§;
   import §`!j§.§9"!§;
   
   public class §'!y§ extends §@"C§
   {
       
      
      protected var §3"4§:§8"F§;
      
      protected var §'"4§:Vector.<String>;
      
      public function §'!y§(param1:§9"!§, param2:§8"F§)
      {
         this.§'"4§ = new Vector.<String>();
         this.§3"4§ = param2;
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
               this.§'"4§.push(§""@§(param1));
            }
         }
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§2!7§ = null;
         if(!§6u§.getLevelForId(param1))
         {
            _loc3_ = §2!7§.§<!P§(§""@§(param2));
            _loc3_.name = param1;
            §6u§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §=!d§() : int
      {
         return this.§'"4§.length;
      }
      
      public function §,!x§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§'"4§.length)
         {
            return this.§'"4§[param1];
         }
         return null;
      }
      
      public function §7",§() : String
      {
         return §""@§("damagefactors.lua","core");
      }
      
      public function §%3§() : String
      {
         return §""@§("materials.lua","core");
      }
   }
}
