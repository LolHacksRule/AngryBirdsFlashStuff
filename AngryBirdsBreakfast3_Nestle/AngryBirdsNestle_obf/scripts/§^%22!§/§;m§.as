package §^"!§
{
   import §0!m§.§@!S§;
   import §@V§.§#=§;
   import §@V§.§&#§;
   
   public class §;m§ extends §9z§
   {
      
      public static const ALL:String = "all";
      
      public static const §+"!§:String = "all_powerups";
      
      public static const §`X§:String = "level_birds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            ALL = "all";
         }
         while(true)
         {
            §+"!§ = "all_powerups";
            while(!_loc2_)
            {
               §`X§ = "level_birds";
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §;m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(§`X§);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr105:
                        }
                     }
                     else
                     {
                        addr87:
                        §§push(1);
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     addr85:
                     §§push(ALL);
                     §§push(_loc3_);
                  }
                  §§goto(addr87);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr87);
               }
               else
               {
                  §§push(2);
               }
               addr110:
               switch(§§pop())
               {
                  case 0:
                     _loc2_ = this.§&!2§(§@!S§.§2A§);
                     break;
                  case 1:
                     _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§+"!§),this.getTutorialNamesForMapping(§`X§));
               }
               return _loc2_;
            }
            §§goto(addr85);
         }
         §§goto(addr87);
      }
      
      protected function §&!2§(param1:§#=§) : Vector.<String>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§&#§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.§&]§)
         {
            if(!_loc6_)
            {
               if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
               {
                  if(!(_loc6_ && _loc3_))
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
