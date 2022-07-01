package §-w§
{
   import §]k§.§-! §;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class §;!t§ extends §-!Q§
   {
      
      public static const §]H§:String = "level_birds";
       
      
      public function §;!t§()
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
         }
         return _loc2_;
      }
      
      protected function §,,§(param1:§<S§) : Vector.<String>
      {
         var _loc3_:§-! § = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§-!7§)
         {
            if(_loc2_.indexOf(_loc3_.name) < 0)
            {
               _loc2_.push(_loc3_.name);
            }
         }
         return _loc2_;
      }
   }
}
