package §5!Q§
{
   public class §?v§
   {
      
      private static const §]m§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]m§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §2!§:Number;
      
      public var angle:Number;
      
      public function §?v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
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
               loop1:
               while(true)
               {
                  this.x = param2;
                  while(true)
                  {
                     this.y = param3;
                     loop3:
                     while(_loc7_)
                     {
                        while(true)
                        {
                           this.§2!§ = param4;
                           do
                           {
                              this.angle = param5;
                           }
                           while(!(_loc7_ || this));
                           
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function initialize(param1:String) : §?v§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§]m§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return new §?v§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + §]m§ + this.x + §]m§ + this.y + §]m§ + this.§2!§ + §]m§ + this.angle;
      }
   }
}
