package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2FilterData;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §&!h§ extends §@"D§
   {
       
      
      protected var §#"-§:int = 0;
      
      public function §&!h§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number, param9:int)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
            do
            {
               this.§#"-§ = param9;
            }
            while(!_loc11_);
            
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc2_)
         {
            §§push(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG");
            if(_loc2_)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr96:
                     while(true)
                     {
                        §§push(itemName.toUpperCase() == "MISC_FOOD_EGG");
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr95:
               }
               loop0:
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        _loc1_.§ #§ = §-"#§;
                     }
                     addr66:
                  }
                  while(!(_loc3_ && this))
                  {
                     §§push(_loc1_);
                     §§push(65535);
                     if(_loc2_)
                     {
                        §§push(§§pop() & ~§>!C§);
                     }
                     §§pop().§5!@§ = §§pop();
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                  }
                  §§goto(addr96);
               }
               return _loc1_;
            }
            §§goto(addr95);
         }
         §§goto(addr66);
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super.updateBeforeRemoving(param1);
            while(param1)
            {
               if(_loc3_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     param1.§>"'§(this.§#"-§,§^!z§().GetPosition().x,§^!z§().GetPosition().y);
                     addr73:
                     break;
                  }
                  continue;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
   }
}
