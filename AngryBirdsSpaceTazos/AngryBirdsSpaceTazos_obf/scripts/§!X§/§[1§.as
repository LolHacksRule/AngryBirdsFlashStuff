package §!X§
{
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   
   public class §[1§ extends §3"B§
   {
      
      public static const §^!p§:String = "all";
      
      public static const §'L§:String = "all_powerups";
      
      public static const §'!9§:String = "level_birds";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §^!p§ = "all";
            while(true)
            {
               §'L§ = "all_powerups";
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §'!9§ = "level_birds";
                     if(_loc1_ || §[1§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §[1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            §§push(§'!9§);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr75:
                        §§push(0);
                        if(_loc5_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr87:
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     §§goto(addr86);
                  }
               }
               §§goto(addr86);
            }
            addr86:
            if(§^!p§ === _loc3_)
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
                  _loc2_ = this.§#>§(§9q§.§>!L§);
                  break;
               case 1:
                  _loc2_ = _loc2_.concat(this.getTutorialNamesForMapping(§'L§),this.getTutorialNamesForMapping(§'!9§));
            }
            return _loc2_;
         }
         §§goto(addr75);
      }
      
      protected function §#>§(param1:§^g§) : Vector.<String>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§-T§ = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in param1.slingshot.mBirds)
         {
            if(!(_loc6_ && this))
            {
               if(_loc2_.indexOf(_loc3_.name.toUpperCase()) < 0)
               {
                  if(_loc7_ || _loc3_)
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
