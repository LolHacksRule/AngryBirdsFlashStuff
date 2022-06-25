package §4H§
{
   public class §4!k§ extends §%!E§
   {
       
      
      public var §^!?§:int;
      
      public var §^!R§:int;
      
      public var §#!a§:int;
      
      public function §4!k§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§^!?§ = param4;
            while(true)
            {
               this.§^!R§ = param5;
            }
            addr80:
         }
         loop1:
         do
         {
            this.§#!a§ = param7;
            while(!_loc9_)
            {
               super(param1,param2,param3,param6);
               if(!(_loc9_ && param3))
               {
                  continue loop1;
               }
            }
            §§goto(addr80);
         }
         while(_loc9_ && param1);
         
      }
      
      public static function §+!7§(param1:Object) : §4!k§
      {
         return new §4!k§(param1.u,param1.n,param1.a,param1.s,param1.me,param1.r,param1.t);
      }
   }
}
