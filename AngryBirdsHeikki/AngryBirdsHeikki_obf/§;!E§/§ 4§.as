package §;!E§
{
   import §+!8§.§2!5§;
   
   public class § 4§ extends §2!5§
   {
      
      public static const §`!$§:int = 5;
      
      private static var §0W§:§2!5§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §`!$§ = 5;
         }
         do
         {
            §0W§ = new § 4§(0,0,200,1000,0,0,§`!$§);
         }
         while(!(_loc1_ || § 4§));
         
      }
      
      public function § 4§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §2!5§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§2!5§ = null;
         §§push(param1);
         if(_loc6_ || param3)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§`!$§);
               if(_loc6_)
               {
                  if(§§pop() === _loc5_)
                  {
                     addr59:
                     §§push(0);
                     if(_loc6_ || param3)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
               }
               addr73:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = §0W§;
                     return new §2!5§(param2,param3,_loc4_.§%!B§,_loc4_.push,_loc4_.§]!E§,_loc4_.damage,param1);
                  default:
                     return §2!5§.createExplosion(param1,param2,param3);
               }
            }
            §§goto(addr59);
         }
         §§goto(addr73);
      }
   }
}
