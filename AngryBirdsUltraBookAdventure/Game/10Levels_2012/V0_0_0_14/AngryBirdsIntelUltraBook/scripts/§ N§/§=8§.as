package § N§
{
   public class §=8§
   {
      
      private static const §0@§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0@§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var § !I§:Number;
      
      public var angle:Number;
      
      public function §=8§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
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
               while(_loc7_ || param3)
               {
                  if(!_loc6_)
                  {
                     this.y = param3;
                     do
                     {
                        this.§ !I§ = param4;
                        do
                        {
                           this.angle = param5;
                        }
                        while(_loc6_);
                        
                     }
                     while(!_loc7_);
                     
                     if(!(_loc6_ && param1))
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §=8§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§0@§);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_.length == 5)
            {
               if(_loc4_ || _loc2_)
               {
                  return new §=8§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §0@§ + this.x + §0@§ + this.y + §0@§ + this.§ !I§ + §0@§ + this.angle;
      }
   }
}
