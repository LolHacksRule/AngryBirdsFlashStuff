package §-w§
{
   import §]k§.§-! §;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class § !m§ extends §-!Q§
   {
      
      public static const ALL:String = "all";
      
      public static const §5!J§:String = "all_powerups";
      
      public static const §]H§:String = "level_birds";
       
      
      public function § !m§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §]H§:
               _loc2_ = this.§,,§(§6!E§.§7I§);
               break;
            case ALL:
               _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§5!J§),this.getTutorialNamesForMapping(§]H§));
         }
         return _loc2_;
      }
      
      protected function §,,§(param1:§<S§) : Vector.<String>
      {
         var _loc3_:§-! § = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§-!7§)
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
