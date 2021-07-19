package §!X§
{
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   
   public class §5p§ extends §3"B§
   {
      
      public static const §'!9§:String = "level_birds";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!9§ = "level_birds";
         }
      }
      
      public function §5p§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
         if(!_loc5_)
         {
            if(§'!9§ === _loc3_)
            {
               addr52:
               §§push(0);
               if(_loc4_ || _loc3_)
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
                  _loc2_ = this.§#>§(§9q§.§>!L§);
            }
            return _loc2_;
         }
         §§goto(addr52);
      }
      
      protected function §#>§(param1:§^g§) : Vector.<String>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§-T§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(!_loc7_)
            {
               if(_loc2_.indexOf(_loc3_.name) >= 0)
               {
                  continue;
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
            }
            _loc2_.push(_loc3_.name);
         }
         return _loc2_;
      }
   }
}
