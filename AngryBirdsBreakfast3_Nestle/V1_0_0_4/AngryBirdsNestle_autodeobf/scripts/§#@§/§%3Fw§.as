package §#@§
{
   import §0I§.§!!p§;
   import §0I§.§3]§;
   import com.angrybirds.§6U§;
   
   public class §?w§ extends §'"4§
   {
      
      public static const §29§:String = "level_birds";
       
      
      public function §?w§()
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
         }
         return _loc2_;
      }
      
      protected function §-"3§(param1:§!!p§) : Vector.<String>
      {
         var _loc3_:§3]§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§"7§)
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
