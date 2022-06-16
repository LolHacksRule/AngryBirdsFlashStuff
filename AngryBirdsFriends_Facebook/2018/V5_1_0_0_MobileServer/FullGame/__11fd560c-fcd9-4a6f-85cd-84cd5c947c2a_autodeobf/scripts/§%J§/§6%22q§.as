package §%J§
{
   import §&$!§.§##a§;
   import §&$!§.§%#k§;
   import §2I§.§?#f§;
   import §;#D§.§3#U§;
   import §@0§.§%!q§;
   import §@0§.§4!_§;
   
   public class §6"q§ extends §?#f§
   {
      
      public static const §?^§:String = "all";
      
      public static const §^#Q§:String = "all_powerups";
      
      public static const §8$ §:String = "level_normal_birds";
      
      public static const §^"n§:String = "level_all_birds";
       
      
      public function §6"q§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §^#Q§:
               _loc2_ = this.§^#V§();
               break;
            case §8$ §:
               _loc2_ = this.§0!l§(§3#U§.§#$4§,false);
               break;
            case §^"n§:
               _loc2_ = this.§0!l§(§3#U§.§#$4§,true);
               break;
            case §?^§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§^#Q§),this.getTutorialNamesForMapping(§^"n§));
         }
         return _loc2_;
      }
      
      protected function §^#V§() : Vector.<String>
      {
         var _loc2_:§##a§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in §%#k§.§1"E§)
         {
            _loc1_.push(_loc2_.§5"g§.toUpperCase());
         }
         return _loc1_;
      }
      
      protected function §0!l§(param1:§%!q§, param2:Boolean) : Vector.<String>
      {
         var _loc4_:§4!_§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         for each(_loc4_ in §3#U§.§#$4§.slingshot.mBirds)
         {
            if(!((_loc4_.name == "BIRD_SARDINE" || _loc4_.name == "BIRD_WINGMAN" || _loc4_.name == "POWERUP_BOOMBOX") && !param2))
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
