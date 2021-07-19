package §=!L§
{
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §+!X§ extends §;_§
   {
      
      public static const §##§:String = "level_birds";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §##§ = "level_birds";
         }
      }
      
      public function §+!X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            if(§##§ === _loc3_)
            {
               addr52:
               §§push(0);
               if(_loc4_ || this)
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
                  _loc2_ = this.§0W§(§&!"§.§1!D§);
            }
            return _loc2_;
         }
         §§goto(addr52);
      }
      
      protected function §0W§(param1:§?!'§) : Vector.<String>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3!&§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§06§)
         {
            if(!(_loc7_ && param1))
            {
               if(_loc2_.indexOf(_loc3_.name) < 0)
               {
                  if(!_loc7_)
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
