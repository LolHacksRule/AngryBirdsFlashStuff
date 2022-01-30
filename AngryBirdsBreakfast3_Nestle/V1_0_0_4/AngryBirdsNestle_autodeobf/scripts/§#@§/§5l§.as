package §#@§
{
   import §0I§.§!!p§;
   import §0I§.§3]§;
   import com.angrybirds.§6U§;
   
   public class §5l§ extends §'"4§
   {
      
      public static const ALL:String = "all";
      
      public static const §[9§:String = "all_powerups";
      
      public static const §29§:String = "level_birds";
       
      
      public function §5l§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §29§:
               _loc2_ = this.§-"3§(§6U§.§+_§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§[9§),this.getTutorialNamesForMapping(§29§));
         }
         return _loc2_;
      }
      
      protected function §-"3§(param1:§!!p§) : Vector.<String>
      {
         var _loc3_:§3]§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§"7§)
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
