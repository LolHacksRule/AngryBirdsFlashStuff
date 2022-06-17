package §<#S§
{
   import §!6§.Sprite;
   import §'!O§.§#$;§;
   
   public class §1#c§
   {
      
      private static const §##E§:String = "move";
      
      private static const §%!y§:String = "scale";
      
      private static const §#"p§:String = "setVisible";
       
      
      public function §1#c§()
      {
         super();
      }
      
      public static function §'j§(param1:Sprite, param2:§8#P§, param3:§#$;§) : §9H§
      {
         var _loc4_:§9H§ = null;
         switch(param3.type)
         {
            case §##E§:
               _loc4_ = new §="J§(param1,param2,param3);
               break;
            case §%!y§:
               _loc4_ = new §5!y§(param1,param2,param3);
               break;
            case §#"p§:
               _loc4_ = new §9"&§(param1,param2,param3);
         }
         return _loc4_;
      }
   }
}
