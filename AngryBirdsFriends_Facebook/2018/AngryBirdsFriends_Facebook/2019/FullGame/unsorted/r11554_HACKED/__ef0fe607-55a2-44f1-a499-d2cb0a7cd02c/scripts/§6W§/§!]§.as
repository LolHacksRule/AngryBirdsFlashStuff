package §6W§
{
   import § !D§.§'"u§;
   import § !D§.§;M§;
   import §=!2§.§%"T§;
   
   public class §!]§ extends §="u§
   {
      
      public static const §;">§:String = "level_birds";
       
      
      public function §!]§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §;">§:
               _loc2_ = this.§4V§(§%"T§.§;`§);
         }
         return _loc2_;
      }
      
      protected function §4V§(param1:§'"u§) : Vector.<String>
      {
         var _loc3_:§;M§ = null;
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
