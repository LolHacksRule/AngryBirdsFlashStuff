package §=!L§
{
   import §@L§.§3!&§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   
   public class §%Z§ extends §;_§
   {
      
      public static const ALL:String = "all";
      
      public static const §,!s§:String = "all_powerups";
      
      public static const §##§:String = "level_birds";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §%Z§))
         {
            ALL = "all";
            while(true)
            {
               §,!s§ = "all_powerups";
               while(!(_loc1_ && §%Z§))
               {
                  §##§ = "level_birds";
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §%Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function getTutorialNamesForMapping(param1:String) : Vector.<String>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<String> = new Vector.<String>(0);
         var _loc3_:* = param1;
         if(_loc5_ || param1)
         {
            §§push(§##§);
            if(_loc5_ || param1)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr93:
                        §§push(1);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                     §§goto(addr116);
                  }
                  else
                  {
                     addr91:
                     §§push(ALL);
                     §§push(_loc3_);
                  }
                  §§goto(addr93);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr93);
               }
               else
               {
                  §§push(2);
               }
               addr116:
               switch(§§pop())
               {
                  case 0:
                     _loc2_ = this.§0W§(§&!"§.§1!D§);
                     break;
                  case 1:
                     _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§,!s§),this.getTutorialNamesForMapping(§##§));
               }
               return _loc2_;
            }
            §§goto(addr91);
         }
         §§goto(addr93);
      }
      
      protected function §0W§(param1:§?!'§) : Vector.<String>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§3!&§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§06§)
         {
            if(_loc7_ || this)
            {
               if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
               {
                  if(_loc7_)
                  {
                     _loc2_.push(_loc3_.name.toUpperCase());
                  }
               }
            }
         }
         return _loc2_;
      }
   }
}
