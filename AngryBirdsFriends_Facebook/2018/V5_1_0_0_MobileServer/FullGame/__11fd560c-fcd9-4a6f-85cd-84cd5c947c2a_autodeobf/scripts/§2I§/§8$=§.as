package §2I§
{
   import §;#D§.§3#U§;
   import §@0§.§%!q§;
   import §@0§.§4!_§;
   
   public class §8$=§ extends §?#f§
   {
      
      public static const §5""§:String = "level_birds";
       
      
      public function §8$=§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §5""§:
               _loc2_ = this.§0!l§(§3#U§.§#$4§);
         }
         return _loc2_;
      }
      
      protected function §0!l§(param1:§%!q§) : Vector.<String>
      {
         var _loc3_:§4!_§ = null;
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
