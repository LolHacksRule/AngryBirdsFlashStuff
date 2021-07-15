package §=!L§
{
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §%Z§ extends §;_§
   {
      
      public static const ALL:String = "all";
      
      public static const §,!s§:String = "all_powerups";
      
      public static const §##§:String = "level_birds";
       
      
      public function §%Z§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §##§:
               _loc2_ = this.§0W§(§&!"§.§1!D§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§,!s§),this.getTutorialNamesForMapping(§##§));
         }
         return _loc2_;
      }
      
      protected function §0W§(param1:§?!'§) : Vector.<String>
      {
         var _loc3_:§3!&§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§06§)
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
