package § #j§
{
   import §#g§.§1§;
   import §#g§.§8§;
   import §?#z§.§]$?§;
   
   public class §8$@§ extends §-w§
   {
      
      public static const §9A§:String = "level_birds";
       
      
      public function §8$@§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §9A§:
               _loc2_ = this.§^!y§(§]$?§.§2#§);
         }
         return _loc2_;
      }
      
      protected function §^!y§(param1:§8#3§) : Vector.<String>
      {
         var _loc3_:§1#0§ = null;
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
