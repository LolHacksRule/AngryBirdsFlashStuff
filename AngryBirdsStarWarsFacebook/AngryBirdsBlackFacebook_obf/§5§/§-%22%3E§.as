package §5§#7
{
   import §^#>§.§#_§;
   import §^#>§.§`"]§;
   import com.angrybirds.§,!q§;
   
   public class §-">§ extends §`!n§
   {
      
      public static const §=!7§:String = "level_birds";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=!7§ = "level_birds";
         }
      }
      
      public function §-">§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         var _loc3_:* = param1;
         if(_loc4_ || _loc3_)
         {
            if(§=!7§ === _loc3_)
            {
               addr57:
               §§push(0);
               if(_loc5_ && param1)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = this.§5"o§(§,!q§.§9!,§);
            }
            return _loc2_;
         }
         §§goto(addr57);
      }
      
      protected function §5"o§(param1:§#_§) : Vector.<String>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§`"]§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§,!?§)
         {
            if(_loc6_)
            {
               if(_loc2_.indexOf(_loc3_.name) < 0)
               {
                  if(_loc6_ || this)
                  {
                     _loc2_.push(_loc3_.name);
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}
