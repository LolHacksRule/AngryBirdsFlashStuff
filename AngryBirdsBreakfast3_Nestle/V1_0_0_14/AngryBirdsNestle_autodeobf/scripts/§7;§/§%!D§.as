package §7;§
{
   import § 2§.§=+§;
   import § 2§.§`!d§;
   import §3!0§.§`i§;
   
   public class §%!D§ extends §1!'§
   {
      
      public static const ALL:String = "all";
      
      public static const §8?§:String = "all_powerups";
      
      public static const §<"#§:String = "level_birds";
       
      
      public function §%!D§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §<"#§:
               _loc2_ = this.§^!6§(§`i§.§&!L§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§8?§),this.getTutorialNamesForMapping(§<"#§));
         }
         return _loc2_;
      }
      
      protected function §^!6§(param1:§=+§) : Vector.<String>
      {
         var _loc3_:§`!d§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§--§)
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
