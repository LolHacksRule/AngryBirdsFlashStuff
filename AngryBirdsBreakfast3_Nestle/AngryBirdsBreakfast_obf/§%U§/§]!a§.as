package §%U§
{
   public class §]!a§
   {
      
      private static const §`!e§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!e§ = ":";
         }
      }
      
      public var step:int;
      
      public var §="§:Number;
      
      public var §]!8§:Number;
      
      public function §]!a§(param1:int, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            do
            {
               this.step = param1;
               while(true)
               {
                  this.§="§ = param2;
                  while(_loc5_ || this)
                  {
                     this.§]!8§ = param3;
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc5_);
            
         }
      }
      
      public static function initialize(param1:String) : §]!a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(§`!e§);
         if(_loc3_)
         {
            if(_loc2_.length == 3)
            {
               if(!_loc4_)
               {
                  return new §]!a§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §`!e§ + this.§="§ + §`!e§ + this.§]!8§;
      }
   }
}
