package §_-01E§
{
   public class §_-00n§ extends §_-0El§
   {
       
      
      public var §_-nT§:int;
      
      public var §_-0EW§:int;
      
      public var §_-08A§:int;
      
      public function §_-00n§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§_-nT§ = param4;
            while(true)
            {
               this.§_-0EW§ = param5;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§_-08A§ = param7;
            do
            {
               super(param1,param2,param3,param6);
            }
            while(!_loc9_);
            
            if(!_loc8_)
            {
               if(!(_loc8_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §_-Ej§(param1:Object) : §_-00n§
      {
         return new §_-00n§(param1.u,param1.n,param1.a,param1.s,param1.me,param1.r,param1.t);
      }
   }
}
