package §<!A§
{
   import §,!"§.§,!#§;
   import §-!O§.§?Z§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§^=§;
   import §^]§.§[z§;
   
   public class §,-§ extends §?Z§
   {
       
      
      private const §[i§:int = -35;
      
      private const §?!2§:int = 13;
      
      private const §?!C§:int = 50;
      
      public function §,-§(param1:§1r§, param2:§[z§, param3:Number = 1.0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = Number(1);
         if(!(_loc5_ && param2))
         {
            if(§!D§.§46§.§,x§() != §,!#§.§-A§)
            {
               while(true)
               {
                  §§push(1.25);
                  if(_loc6_ || param3)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc4_ = §§pop();
                  addr84:
                  while(true)
                  {
                  }
                  addr60:
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
            while(true)
            {
               super(param1,param2,_loc4_);
               if(!_loc6_)
               {
                  continue;
               }
               §§goto(addr60);
            }
            §§goto(addr67);
         }
         §§goto(addr84);
      }
      
      override public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(_loc5_)
         {
            if(§;§.sprite)
            {
               addr133:
               §§push(this.§[i§);
               loop0:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr136:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr137:
                     while(true)
                     {
                        §§push(this.§?!2§);
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr193);
         }
         §§goto(addr133);
      }
   }
}
