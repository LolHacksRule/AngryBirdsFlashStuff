package §&#k§
{
   import §52§.§#!,§;
   import §52§.§5!&§;
   import §?§.§>"$§;
   
   public class §^$!§ extends §3R§
   {
      
      public static const §6#+§:String = "level_birds";
       
      
      public function §^$!§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §6#+§:
               _loc2_ = this.§`#l§(§>"$§.§3#'§);
         }
         return _loc2_;
      }
      
      protected function §`#l§(param1:§#!,§) : Vector.<String>
      {
         var _loc3_:§5!&§ = null;
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
