package §`"T§
{
   import §"§.§1!T§;
   import §"§.§;!E§;
   import com.angrybirds.§<!J§;
   
   public class §#"-§ extends §6^§
   {
      
      public static const §%%§:String = "level_birds";
       
      
      public function §#"-§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §%%§:
               _loc2_ = this.§"#$§(§<!J§.§=!%§);
         }
         return _loc2_;
      }
      
      protected function §"#$§(param1:§;!E§) : Vector.<String>
      {
         var _loc3_:§1!T§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§&"P§)
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
