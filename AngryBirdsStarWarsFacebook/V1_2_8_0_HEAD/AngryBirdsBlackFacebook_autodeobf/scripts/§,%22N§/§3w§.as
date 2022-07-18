package §,"N§
{
   import §2"Y§.§>"X§;
   import §2d§.§%$§;
   import §2d§.§;H§;
   import §?m§.§+"2§;
   import §?m§.§=!z§;
   
   public class §3w§ extends §'#E§
   {
       
      
      protected var §?4§:§>"X§;
      
      protected var §-!>§:Vector.<String>;
      
      public function §3w§(param1:§+"2§, param2:§>"X§)
      {
         this.§-!>§ = new Vector.<String>();
         this.§?4§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.§%!v§(_loc4_,param1);
            return;
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0 && param1.indexOf("bosses") < 0)
            {
               this.§-!>§.push(§^k§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function §%!v§(param1:String, param2:String) : void
      {
         var _loc3_:§=!z§ = null;
         if(!§+!b§.getLevelForId(param1))
         {
            _loc3_ = §=!z§.§+#^§(§^k§(param2));
            _loc3_.name = param1;
            §+!b§.addLevel(param1,_loc3_);
         }
      }
      
      public function get §8#;§() : int
      {
         return this.§-!>§.length;
      }
      
      public function §""d§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§-!>§.length)
         {
            return this.§-!>§[param1];
         }
         return null;
      }
      
      public function §'#!§() : String
      {
         return §^k§("damagefactors.lua","core");
      }
      
      public function §7"Z§() : String
      {
         return §^k§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§;H§) : void
      {
         var _loc3_:§%$§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§0#a§)
         {
            _loc3_ = param1.§4y§(_loc2_);
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
