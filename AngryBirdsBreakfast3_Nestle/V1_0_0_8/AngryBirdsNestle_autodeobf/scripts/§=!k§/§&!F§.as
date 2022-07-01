package §=!k§
{
   import §9G§.§1!a§;
   import §9G§.§2F§;
   import com.angrybirds.§4"6§;
   
   public class §&!F§ extends §,z§
   {
      
      public static const §1!'§:String = "level_birds";
       
      
      public function §&!F§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §1!'§:
               _loc2_ = this.§]<§(§4"6§.§;!k§);
         }
         return _loc2_;
      }
      
      protected function §]<§(param1:§2F§) : Vector.<String>
      {
         var _loc3_:§1!a§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§set §)
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
