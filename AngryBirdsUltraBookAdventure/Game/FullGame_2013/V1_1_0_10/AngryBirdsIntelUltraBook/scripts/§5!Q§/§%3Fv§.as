package §5!Q§
{
   public class §?v§
   {
      
      private static const §]m§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]m§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §2!§:Number;
      
      public var angle:Number;
      
      public function §?v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.step = param1;
               loop1:
               while(!(_loc6_ && this))
               {
                  this.x = param2;
                  while(true)
                  {
                     this.y = param3;
                     while(_loc7_)
                     {
                        this.§2!§ = param4;
                        while(_loc7_)
                        {
                           this.angle = param5;
                           if(!(_loc6_ && this))
                           {
                              if(!(_loc7_ || param1))
                              {
                                 continue loop1;
                              }
                              §§goto(addr52);
                              continue loop1;
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function initialize(param1:String) : §?v§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§]m§);
         if(!_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_ || _loc2_)
               {
                  return new §?v§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function toString() : String
      {
         return this.step + §]m§ + this.x + §]m§ + this.y + §]m§ + this.§2!§ + §]m§ + this.angle;
      }
   }
}
