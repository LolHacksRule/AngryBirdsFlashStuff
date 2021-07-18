package §-n§
{
   public class §!!Q§
   {
      
      private static const §4!@§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §4!@§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §^!#§:Number;
      
      public var angle:Number;
      
      public function §!!Q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               loop1:
               while(true)
               {
                  this.x = param2;
                  loop2:
                  do
                  {
                     this.y = param3;
                     while(!_loc6_)
                     {
                        this.§^!#§ = param4;
                        continue loop1;
                        if(!(_loc6_ && param2))
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc6_);
                  
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §!!Q§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§4!@§);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc4_)
               {
                  return new §!!Q§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §4!@§ + this.x + §4!@§ + this.y + §4!@§ + this.§^!#§ + §4!@§ + this.angle;
      }
   }
}
