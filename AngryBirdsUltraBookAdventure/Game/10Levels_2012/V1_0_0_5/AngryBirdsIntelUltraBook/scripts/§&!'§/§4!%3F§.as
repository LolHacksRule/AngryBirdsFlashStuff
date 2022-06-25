package §&!'§
{
   public class §4!?§
   {
      
      private static const §9@§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §9@§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §1$§:Number;
      
      public var angle:Number;
      
      public function §4!?§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super();
            while(true)
            {
               this.step = param1;
               while(_loc6_ || param2)
               {
                  this.x = param2;
                  loop2:
                  while(!(_loc7_ && param3))
                  {
                     this.y = param3;
                     while(true)
                     {
                        this.§1$§ = param4;
                        do
                        {
                           this.angle = param5;
                        }
                        while(!_loc6_);
                        
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function initialize(param1:String) : §4!?§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§9@§);
         if(!_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc3_)
               {
                  return new §4!?§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr40:
               }
            }
            return null;
         }
         §§goto(addr40);
      }
      
      public function toString() : String
      {
         return this.step + §9@§ + this.x + §9@§ + this.y + §9@§ + this.§1$§ + §9@§ + this.angle;
      }
   }
}
