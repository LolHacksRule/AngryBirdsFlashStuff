package §<H§
{
   import §&#k§.§3R§;
   import §'"-§.§'§;
   import §'"-§.§`j§;
   import §52§.§#!,§;
   import §52§.§5!&§;
   import §?§.§>"$§;
   
   public class §?!z§ extends §3R§
   {
      
      public static const §"!4§:String = "all";
      
      public static const §>#7§:String = "all_powerups";
      
      public static const §`#h§:String = "level_normal_birds";
      
      public static const §8!#§:String = "level_all_birds";
       
      
      public function §?!z§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §>#7§:
               _loc2_ = this.§'^§();
               break;
            case §`#h§:
               _loc2_ = this.§`#l§(§>"$§.§3#'§,false);
               break;
            case §8!#§:
               _loc2_ = this.§`#l§(§>"$§.§3#'§,true);
               break;
            case §"!4§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§>#7§),this.getTutorialNamesForMapping(§8!#§));
         }
         return _loc2_;
      }
      
      protected function §'^§() : Vector.<String>
      {
         var _loc2_:§'#3§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §`j§.§1"f§)
         {
            _loc1_.push(_loc2_.§"!E§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §`#l§(param1:§#!,§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§5!&§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §>"$§.§3#'§.slingshot.mBirds)
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
