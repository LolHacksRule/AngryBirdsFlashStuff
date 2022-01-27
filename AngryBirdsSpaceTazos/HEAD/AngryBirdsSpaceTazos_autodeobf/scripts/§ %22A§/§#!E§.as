package § "A§
{
   import §3"#§.§'"&§;
   import §3"#§.§`"8§;
   import §>"2§.§8k§;
   
   public class §#!E§ extends §<!N§
   {
      
      public static const §<#§:String = "level_birds";
       
      
      public function §#!E§()
      {
         super();
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         switch(param1)
         {
            case §<#§:
               _loc2_ = this.§>!U§(§8k§.§;!]§);
         }
         return _loc2_;
      }
      
      protected function §>!U§(param1:§`"8§) : Vector.<String>
      {
         var _loc3_:§'"&§ = null;
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
