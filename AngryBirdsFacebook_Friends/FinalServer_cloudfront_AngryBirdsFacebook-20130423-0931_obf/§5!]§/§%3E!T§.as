package §5!]§
{
   public class §>!T§
   {
      
      private static const §!"B§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!"B§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §""%§:Number;
      
      public var angle:Number;
      
      public function §>!T§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super();
            while(true)
            {
               this.step = param1;
               while(!_loc6_)
               {
                  while(!(_loc6_ && param1))
                  {
                     this.y = param3;
                     while(_loc7_ || param3)
                     {
                        this.§""%§ = param4;
                        do
                        {
                           this.angle = param5;
                        }
                        while(!(_loc7_ || param2));
                        
                        if(!(_loc6_ && param1))
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.x = param2;
            §§goto(addr89);
         }
      }
      
      public static function initialize(param1:String) : §>!T§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§!"B§);
         if(_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc4_)
               {
                  return new §>!T§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr39:
               }
            }
            return null;
         }
         §§goto(addr39);
      }
      
      public function toString() : String
      {
         return this.step + §!"B§ + this.x + §!"B§ + this.y + §!"B§ + this.§""%§ + §!"B§ + this.angle;
      }
   }
}
