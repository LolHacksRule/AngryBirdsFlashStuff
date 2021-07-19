package §5§#7
{
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §-">§ extends §`!n§
   {
      
      public static const §=!7§:String = "level_birds";
       
      
      public function §-">§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §=!7§:
               _loc2_ = this.§5"o§(§,!q§.§9!,§);
         }
         return _loc2_;
      }
      
      protected function §5"o§(param1:§#_§) : Vector.<String>
      {
         var _loc3_:§`"]§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§,!?§)
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
