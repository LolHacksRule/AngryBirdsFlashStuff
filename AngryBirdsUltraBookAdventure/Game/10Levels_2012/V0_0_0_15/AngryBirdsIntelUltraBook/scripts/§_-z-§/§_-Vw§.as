package §_-z-§
{
   public class §_-Vw§
   {
      
      private static const §_-58§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-58§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §_-02a§:Number;
      
      public var angle:Number;
      
      public function §_-Vw§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.step = param1;
               addr93:
               while(true)
               {
                  this.x = param2;
               }
               loop4:
               while(!(_loc6_ && this))
               {
                  this.angle = param5;
                  if(!_loc7_)
                  {
                     continue;
                  }
                  addr30:
                  if(!(_loc6_ && param3))
                  {
                     addr47:
                     if(!(_loc7_ || param2))
                     {
                        while(true)
                        {
                           this.y = param3;
                           addr81:
                           while(_loc7_)
                           {
                              this.§_-02a§ = param4;
                              continue loop4;
                              §§goto(addr30);
                           }
                           §§goto(addr93);
                           §§goto(addr47);
                        }
                        addr88:
                     }
                     return;
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function initialize(param1:String) : §_-Vw§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§_-58§);
         if(!_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_ || _loc3_)
               {
                  return new §_-Vw§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §_-58§ + this.x + §_-58§ + this.y + §_-58§ + this.§_-02a§ + §_-58§ + this.angle;
      }
   }
}
