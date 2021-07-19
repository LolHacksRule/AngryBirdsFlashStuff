package §>!E§
{
   public class §+G§
   {
      
      private static const §8N§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8N§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var § i§:Number;
      
      public var angle:Number;
      
      public function §+G§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.step = param1;
               loop1:
               while(true)
               {
                  this.x = param2;
                  while(true)
                  {
                     this.y = param3;
                     loop3:
                     while(!_loc7_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.angle = param5;
                           if(_loc6_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function initialize(param1:String) : §+G§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§8N§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_ || _loc3_)
               {
                  return new §+G§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §8N§ + this.x + §8N§ + this.y + §8N§ + this.§ i§ + §8N§ + this.angle;
      }
   }
}
