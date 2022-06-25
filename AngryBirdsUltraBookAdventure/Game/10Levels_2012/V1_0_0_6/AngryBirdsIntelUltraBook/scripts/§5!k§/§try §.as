package §5!k§
{
   public class §try §
   {
      
      private static const §`-§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`-§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §@!e§:Number;
      
      public var angle:Number;
      
      public function §try §(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.step = param1;
               while(true)
               {
                  this.x = param2;
                  loop2:
                  for(; _loc6_; if(_loc7_ && param3)
                  {
                     continue;
                  },if(_loc7_)
                  {
                     continue loop0;
                  })
                  {
                     this.y = param3;
                     while(true)
                     {
                        this.§@!e§ = param4;
                        while(_loc6_)
                        {
                           this.angle = param5;
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function initialize(param1:String) : §try §
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§`-§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return new §try §(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function toString() : String
      {
         return this.step + §`-§ + this.x + §`-§ + this.y + §`-§ + this.§@!e§ + §`-§ + this.angle;
      }
   }
}
