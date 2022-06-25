package §6!M§
{
   public class §-!?§ extends §1t§
   {
       
      
      public var §0!F§:int;
      
      public var stars:int;
      
      public var §?!d§:int;
      
      public var §%!h§:Boolean;
      
      [Transient]
      public var §+!3§:Boolean = false;
      
      public function §-!?§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            this.§0!F§ = param4;
            while(true)
            {
               this.stars = param5;
               while(!_loc8_)
               {
                  this.§?!d§ = param6;
                  while(!_loc8_)
                  {
                     super(param1,param2,param3,param7);
                     if(_loc9_)
                     {
                        return;
                        addr43:
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §3!x§(param1:Object) : §-!?§
      {
         return new §-!?§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
