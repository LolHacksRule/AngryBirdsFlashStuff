package §["r§
{
   import §#"H§.§"#-§;
   import §+!C§.§!!S§;
   import §+!C§.§@"@§;
   import §6"r§.§!#A§;
   import §;P§.§-#b§;
   import §;P§.§super§;
   
   public class §'E§ extends §"#-§
   {
      
      public static const §2'§:String = "all";
      
      public static const §"$=§:String = "all_powerups";
      
      public static const § "w§:String = "level_normal_birds";
      
      public static const §[$4§:String = "level_all_birds";
       
      
      public function §'E§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §"$=§:
               _loc2_ = this.§?#m§();
               break;
            case § "w§:
               _loc2_ = this.§+4§(§!#A§.§#F§,false);
               break;
            case §[$4§:
               _loc2_ = this.§+4§(§!#A§.§#F§,true);
               break;
            case §2'§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§"$=§),this.getTutorialNamesForMapping(§[$4§));
         }
         return _loc2_;
      }
      
      protected function §?#m§() : Vector.<String>
      {
         var _loc2_:§-#b§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §super§.§[#>§)
         {
            _loc1_.push(_loc2_.§?"9§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §+4§(param1:§!!S§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§@"@§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §!#A§.§#F§.slingshot.mBirds)
         {
            if(!((_loc4_.name == "BIRD_SARDINE" || _loc4_.name == "BIRD_WINGMAN") && !param2))
            {
               if(_loc3_.indexOf(_loc4_.name) < 0)
               {
                  _loc3_.push(_loc4_.name);
               }
            }
         }
         return _loc3_;
      }
   }
}
