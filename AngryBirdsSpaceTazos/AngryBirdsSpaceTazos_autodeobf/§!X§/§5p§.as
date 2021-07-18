package §!X§
{
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   
   public class §5p§ extends §3"B§
   {
      
      public static const §'!9§:String = "level_birds";
       
      
      public function §5p§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §'!9§:
               _loc2_ = this.§#>§(§9q§.§>!L§);
         }
         return _loc2_;
      }
      
      protected function §#>§(param1:§^g§) : Vector.<String>
      {
         var _loc3_:§-T§ = null;
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
