package §4"#§
{
   public class §&@§
   {
      
      private static const §"1§:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"1§ = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §#!x§:Number;
      
      public var angle:Number;
      
      public function §&@§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super();
            while(true)
            {
               this.step = param1;
               loop1:
               for(; !_loc6_; if(!(_loc7_ || param2))
               {
                  continue;
               },§§goto(addr59))
               {
                  this.x = param2;
                  while(true)
                  {
                     this.y = param3;
                     loop3:
                     while(_loc7_ || param1)
                     {
                        while(true)
                        {
                           this.§#!x§ = param4;
                           do
                           {
                              this.angle = param5;
                           }
                           while(!(_loc7_ || param3));
                           
                           if(!_loc6_)
                           {
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
         §§goto(addr76);
      }
      
      public static function initialize(param1:String) : §&@§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = param1.split(§"1§);
         if(_loc4_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc3_)
               {
                  return new §&@§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
                  addr40:
               }
            }
            return null;
         }
         §§goto(addr40);
      }
      
      public function toString() : String
      {
         return this.step + §"1§ + this.x + §"1§ + this.y + §"1§ + this.§#!x§ + §"1§ + this.angle;
      }
   }
}
