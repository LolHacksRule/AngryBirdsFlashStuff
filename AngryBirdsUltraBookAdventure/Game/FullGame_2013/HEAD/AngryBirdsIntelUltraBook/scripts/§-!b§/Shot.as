package §-!b§
{
   public class Shot
   {
      
      private static const §'L§:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'L§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var power:Number;
      
      public var angle:Number;
      
      public function Shot(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super();
            while(true)
            {
               this.step = param1;
               addr75:
               if(_loc6_ || param3)
               {
                  this.power = param4;
                  do
                  {
                     this.angle = param5;
                  }
                  while(!(_loc6_ || param1));
                  
                  addr82:
                  if(!_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr75);
                        }
                        addr87:
                        while(true)
                        {
                           this.y = param3;
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        this.x = param2;
                        §§goto(addr87);
                     }
                     addr92:
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function initialize(param1:String) : Shot
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§'L§);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_.length == 5)
            {
               if(_loc3_ || _loc2_)
               {
                  return new Shot(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr50:
               }
            }
            return null;
         }
         §§goto(addr50);
      }
      
      public function toString() : String
      {
         return this.step + §'L§ + this.x + §'L§ + this.y + §'L§ + this.power + §'L§ + this.angle;
      }
   }
}
