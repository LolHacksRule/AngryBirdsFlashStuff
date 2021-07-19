package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2FilterData;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   
   public class §[4§ extends §>!9§
   {
       
      
      protected var §-B§:int = 0;
      
      public function §[4§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6);
            do
            {
               this.§-B§ = param7;
            }
            while(_loc9_ && this);
            
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(!_loc2_)
         {
            §§push(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG");
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr97:
                     while(true)
                     {
                        §§push(itemName.toUpperCase() == "MISC_FOOD_EGG");
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr96:
               }
               loop0:
               while(§§pop())
               {
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        _loc1_.§9!W§ = §,O§;
                        do
                        {
                           §§push(_loc1_);
                           §§push(65535);
                           if(_loc3_)
                           {
                              §§push(§§pop() & ~§8"!§);
                           }
                           §§pop().§`"%§ = §§pop();
                        }
                        while(!_loc3_);
                        
                        if(_loc3_ || _loc1_)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr97);
               }
               return _loc1_;
            }
            §§goto(addr96);
         }
         §§goto(addr74);
      }
      
      override public function updateBeforeRemoving(param1:§3!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.updateBeforeRemoving(param1);
            loop0:
            for(; param1; while(true)
            {
               if(_loc3_ || _loc2_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            param1.§ !%§(this.§-B§,§^`§().GetPosition().x,§^`§().GetPosition().y);
            §§goto(addr51);
         }
      }
   }
}
