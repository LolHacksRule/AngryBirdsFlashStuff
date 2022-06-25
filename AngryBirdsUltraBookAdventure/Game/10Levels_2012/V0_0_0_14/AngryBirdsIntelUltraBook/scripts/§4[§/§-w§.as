package §4[§
{
   public class §-w§ extends §%!X§
   {
       
      
      public var §'!j§:int;
      
      public var stars:int;
      
      public var §=!w§:int;
      
      public var §1R§:Boolean;
      
      [Transient]
      public var §6!s§:Boolean = false;
      
      public function §-w§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            this.§'!j§ = param4;
         }
         while(true)
         {
            this.stars = param5;
            while(!(_loc8_ && param3))
            {
               this.§=!w§ = param6;
               do
               {
                  super(param1,param2,param3,param7);
               }
               while(!_loc9_);
               
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public static function §+q§(param1:Object) : §-w§
      {
         return new §-w§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
