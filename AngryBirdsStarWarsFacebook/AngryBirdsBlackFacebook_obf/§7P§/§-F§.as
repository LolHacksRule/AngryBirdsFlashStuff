package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §-F§ extends §7";§
   {
       
      
      protected var §>[§:int = 0;
      
      public function §-F§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         do
         {
            this.§>[§ = param7;
         }
         while(_loc8_);
         
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2FilterData = super.createFilterData();
         if(!_loc2_)
         {
            §§push(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG");
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr102:
                     loop3:
                     while(true)
                     {
                        §§push(itemName.toUpperCase() == "MISC_FOOD_EGG");
                        if(!_loc2_)
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.§=#0§ = §!z§;
                              }
                              do
                              {
                                 §§push(_loc1_);
                                 §§push(65535);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(§§pop() & ~§7!6§);
                                 }
                                 §§pop().§8"A§ = §§pop();
                              }
                              while(_loc2_);
                              
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return _loc1_;
                           addr70:
                        }
                     }
                  }
                  addr101:
               }
               §§goto(addr70);
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.updateBeforeRemoving(param1);
         }
         while(param1)
         {
            if(_loc2_)
            {
               param1.§1!R§(this.§>[§,§3!t§().GetPosition().x,§3!t§().GetPosition().y);
            }
            if(!_loc3_)
            {
               break;
            }
         }
      }
   }
}
