package §`!u§
{
   import §+!n§.§+!p§;
   import §?$#§.§;![§;
   import §?$#§.§<d§;
   
   public class §"!x§ extends §-#d§
   {
      
      public static const §^i§:String = "level_birds";
       
      
      public function §"!x§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §^i§:
               _loc2_ = this.§=!u§(§+!p§.§`?§);
         }
         return _loc2_;
      }
      
      protected function §=!u§(param1:§<d§) : Vector.<String>
      {
         var _loc3_:§;![§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
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
