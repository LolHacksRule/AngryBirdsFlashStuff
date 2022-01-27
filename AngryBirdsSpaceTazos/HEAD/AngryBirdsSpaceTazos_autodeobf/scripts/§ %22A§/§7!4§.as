package § "A§
{
   import §3"#§.§'"&§;
   import §3"#§.§`"8§;
   import §>"2§.§8k§;
   
   public class §7!4§ extends §<!N§
   {
      
      public static const §?'§:String = "all";
      
      public static const §+1§:String = "all_powerups";
      
      public static const §<#§:String = "level_birds";
       
      
      public function §7!4§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §<#§:
               _loc2_ = this.§>!U§(§8k§.§;!]§);
               break;
            case §?'§:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+1§),this.getTutorialNamesForMapping(§<#§));
         }
         return _loc2_;
      }
      
      protected function §>!U§(param1:§`"8§) : Vector.<String>
      {
         var _loc3_:§'"&§ = null;
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
