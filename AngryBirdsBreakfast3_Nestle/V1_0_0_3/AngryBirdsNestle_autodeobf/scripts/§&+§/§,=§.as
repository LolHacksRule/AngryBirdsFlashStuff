package §&+§
{
   import §@"1§.§"h§;
   import §@"1§.§8L§;
   import com.angrybirds.§4!l§;
   
   public class §,=§ extends §2@§
   {
      
      public static const ALL:String = "all";
      
      public static const §1!x§:String = "all_powerups";
      
      public static const §0"-§:String = "level_birds";
       
      
      public function §,=§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §0"-§:
               _loc2_ = this.§`@§(§4!l§.§,!8§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§1!x§),this.getTutorialNamesForMapping(§0"-§));
         }
         return _loc2_;
      }
      
      protected function §`@§(param1:§"h§) : Vector.<String>
      {
         var _loc3_:§8L§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§1%§)
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
