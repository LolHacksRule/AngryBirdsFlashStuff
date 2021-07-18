package §<a§
{
   public class §"G§
   {
      
      private static const DELIM:String = ":";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"G§))
         {
            DELIM = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §0f§:Number;
      
      public var angle:Number;
      
      public function §"G§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            loop0:
            do
            {
               this.step = param1;
               while(true)
               {
                  this.x = param2;
                  while(_loc7_ || param1)
                  {
                     this.y = param3;
                     do
                     {
                        this.§0f§ = param4;
                        do
                        {
                           this.angle = param5;
                        }
                        while(!(_loc7_ || this));
                        
                     }
                     while(_loc6_);
                     
                     if(_loc7_ || param1)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc6_);
            
         }
      }
      
      public static function §,a§(param1:String) : §"G§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(DELIM);
         if(_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return new §"G§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.§0f§ + DELIM + this.angle;
      }
   }
}
