package §=?§
{
   public class §<Q§
   {
      
      private static const DELIM:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            DELIM = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!F§:Number;
      
      public var angle:Number;
      
      public function §<Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super();
            while(true)
            {
               this.step = param1;
            }
            addr100:
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
                  this.§@!F§ = param4;
                  while(true)
                  {
                     if(!(_loc7_ && param2))
                     {
                        continue loop1;
                     }
                     continue loop3;
                     addr72:
                     this.angle = param5;
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
            while(!(_loc6_ || param1));
            
            return;
         }
      }
      
      public static function §&O§(param1:String) : §<Q§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(DELIM);
         if(_loc4_ || _loc2_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return new §<Q§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.§@!F§ + DELIM + this.angle;
      }
   }
}
