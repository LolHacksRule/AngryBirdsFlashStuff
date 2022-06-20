package §#"H§
{
   import §+!C§.§!!S§;
   import §+!C§.§@"@§;
   import §6"r§.§!#A§;
   
   public class §["R§ extends §"#-§
   {
      
      public static const §##8§:String = "level_birds";
       
      
      public function §["R§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §##8§:
               _loc2_ = this.§+4§(§!#A§.§#F§);
         }
         return _loc2_;
      }
      
      protected function §+4§(param1:§!!S§) : Vector.<String>
      {
         var _loc3_:§@"@§ = null;
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
