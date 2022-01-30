package §!!i§
{
   import §]A§.§0n§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §5y§ extends §@Y§
   {
      
      public static const §%C§:String = "level_birds";
       
      
      public function §5y§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §%C§:
               _loc2_ = this.§&!@§(§#Z§.§'0§);
         }
         return _loc2_;
      }
      
      protected function §&!@§(param1:§[d§) : Vector.<String>
      {
         var _loc3_:§0n§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§3!Q§)
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
