package §9a§
{
   public class Shot
   {
      
      private static const §1q§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1q§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var power:Number;
      
      public var angle:Number;
      
      public function Shot(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.step = param1;
            }
            addr91:
         }
         loop1:
         while(true)
         {
            this.x = param2;
            loop2:
            do
            {
               this.y = param3;
               loop3:
               while(true)
               {
                  this.power = param4;
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     continue loop3;
                     addr73:
                     this.angle = param5;
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
            while(!(_loc7_ || param2));
            
            return;
         }
      }
      
      public static function initialize(param1:String) : Shot
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§1q§);
         if(_loc4_ || param1)
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_ || _loc2_)
               {
                  return new Shot(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §1q§ + this.x + §1q§ + this.y + §1q§ + this.power + §1q§ + this.angle;
      }
   }
}
