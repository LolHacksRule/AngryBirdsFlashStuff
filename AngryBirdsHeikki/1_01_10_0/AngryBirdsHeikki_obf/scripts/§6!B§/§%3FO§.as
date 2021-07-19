package §6!B§
{
   public class §?O§
   {
      
      private static const DELIM:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            DELIM = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §9!I§:Number;
      
      public var angle:Number;
      
      public function §?O§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               do
               {
                  this.x = param2;
                  do
                  {
                     this.y = param3;
                     continue loop0;
                  }
                  while(_loc6_ && this);
                  
               }
               while(_loc6_);
               
            }
         }
      }
      
      public static function initialize(param1:String) : §?O§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(DELIM);
         if(!_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc3_)
               {
                  return new §?O§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.§9!I§ + DELIM + this.angle;
      }
   }
}
