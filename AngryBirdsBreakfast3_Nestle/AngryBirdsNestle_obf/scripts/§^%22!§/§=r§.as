package §^"!§
{
   import §0!m§.§@!S§;
   import §@V§.§#=§;
   import §@V§.§&#§;
   
   public class §=r§ extends §9z§
   {
      
      public static const §`X§:String = "level_birds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`X§ = "level_birds";
         }
      }
      
      public function §=r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         if(_loc4_ || this)
         {
            if(§`X§ === _loc3_)
            {
               addr57:
               §§push(0);
               if(_loc5_)
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
                  _loc2_ = this.§&!2§(§@!S§.§2A§);
            }
            return _loc2_;
         }
         §§goto(addr57);
      }
      
      protected function §&!2§(param1:§#=§) : Vector.<String>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§&#§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§&]§)
         {
            if(!_loc7_)
            {
               if(_loc2_.indexOf(_loc3_.name) < 0)
               {
                  if(!(_loc7_ && _loc2_))
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
