package §<#o§
{
   import §>2§.§!6§;
   import §>2§.§>#!§;
   import §`#@§.§7n§;
   
   public class §2$,§ extends §"!#§
   {
      
      public static const §?>§:String = "level_birds";
       
      
      public function §2$,§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §?>§:
               _loc2_ = this.§'g§(§7n§.§6#K§);
         }
         return _loc2_;
      }
      
      protected function §'g§(param1:§!6§) : Vector.<String>
      {
         var _loc3_:§>#!§ = null;
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
