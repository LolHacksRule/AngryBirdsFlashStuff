package §&+§
{
   import §@"1§.§"h§;
   import §@"1§.§8L§;
   import com.angrybirds.§4!l§;
   
   public class §1u§ extends §2@§
   {
      
      public static const §0"-§:String = "level_birds";
       
      
      public function §1u§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §0"-§:
               _loc2_ = this.§`@§(§4!l§.§,!8§);
         }
         return _loc2_;
      }
      
      protected function §`@§(param1:§"h§) : Vector.<String>
      {
         var _loc3_:§8L§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§1%§)
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
