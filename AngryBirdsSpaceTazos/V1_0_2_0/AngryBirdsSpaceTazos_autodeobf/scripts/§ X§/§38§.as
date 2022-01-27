package § X§
{
   import §+!9§.§;0§;
   import §?!<§.§'!1§;
   import §?!<§.§6"3§;
   
   public class §38§ extends §0!r§
   {
      
      public static const §<!?§:String = "all";
      
      public static const §>"'§:String = "all_powerups";
      
      public static const §!J§:String = "level_birds";
       
      
      public function §38§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §!J§:
               _loc2_ = this.§3!=§(§;0§.§@!^§);
               break;
            case §<!?§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§>"'§),this.getTutorialNamesForMapping(§!J§));
         }
         return _loc2_;
      }
      
      protected function §3!=§(param1:§'!1§) : Vector.<String>
      {
         var _loc3_:§6"3§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
            {
               _loc2_.push(_loc3_.name.toUpperCase());
            }
         }
         return _loc2_;
      }
   }
}
