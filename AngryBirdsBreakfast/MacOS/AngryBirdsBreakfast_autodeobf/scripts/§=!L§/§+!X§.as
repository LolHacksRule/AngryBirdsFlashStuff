package §=!L§
{
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §+!X§ extends §;_§
   {
      
      public static const §##§:String = "level_birds";
       
      
      public function §+!X§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §##§:
               _loc2_ = this.§0W§(§&!"§.§1!D§);
         }
         return _loc2_;
      }
      
      protected function §0W§(param1:§?!'§) : Vector.<String>
      {
         var _loc3_:§3!&§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§06§)
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
