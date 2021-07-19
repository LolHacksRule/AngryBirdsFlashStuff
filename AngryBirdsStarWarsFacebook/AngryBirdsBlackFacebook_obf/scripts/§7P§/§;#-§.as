package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2FilterData;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §;#-§ extends §7";§
   {
       
      
      public function §;#-§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2FilterData = super.createFilterData();
         if(_loc2_)
         {
            _loc1_.§=#0§ = §!z§;
            do
            {
               §§push(_loc1_);
               §§push(65535);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() & ~§7!6§);
               }
               §§pop().§8"A§ = §§pop();
            }
            while(_loc3_);
            
         }
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.updateBeforeRemoving(param1);
         }
         while(param1)
         {
            if(!(_loc2_ && param1))
            {
               param1.§1!R§(§>"_§.§%#G§,§3!t§().GetPosition().x,§3!t§().GetPosition().y);
            }
            if(!(_loc2_ && _loc3_))
            {
               break;
            }
         }
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            health = 0;
         }
      }
   }
}
