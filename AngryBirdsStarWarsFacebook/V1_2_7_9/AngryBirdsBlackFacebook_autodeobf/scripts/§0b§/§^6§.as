package §0b§
{
   import §5!q§.§+e§;
   import §5!q§.§3"X§;
   import com.angrybirds.§;!e§;
   
   public class §^6§ extends §""W§
   {
      
      public static const §4$§:String = "level_birds";
       
      
      public function §^6§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §4$§:
               _loc2_ = this.§8#7§(§;!e§.§<x§);
         }
         return _loc2_;
      }
      
      protected function §8#7§(param1:§3"X§) : Vector.<String>
      {
         var _loc3_:§+e§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§1#!§)
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
