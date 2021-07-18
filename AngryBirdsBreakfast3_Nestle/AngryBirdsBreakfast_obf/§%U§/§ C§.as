package §%U§
{
   public class § C§
   {
      
      private static const §`!e§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §`!e§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §""§:Number;
      
      public var angle:Number;
      
      public function § C§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.step = param1;
            while(true)
            {
               this.x = param2;
               while(_loc7_)
               {
                  this.y = param3;
                  while(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        this.§""§ = param4;
                        while(!(_loc6_ && param2))
                        {
                           this.angle = param5;
                           if(_loc7_ || param1)
                           {
                              return;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function initialize(param1:String) : § C§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§`!e§);
         if(!(_loc3_ && param1))
         {
            if(_loc2_.length == 5)
            {
               if(!_loc3_)
               {
                  return new § C§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §`!e§ + this.x + §`!e§ + this.y + §`!e§ + this.§""§ + §`!e§ + this.angle;
      }
   }
}
