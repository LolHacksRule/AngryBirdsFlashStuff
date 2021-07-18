package §"k§
{
   public class §5"2§ extends §=!g§
   {
       
      
      public var §@"0§:int;
      
      public var §<L§:int;
      
      public var §3H§:int;
      
      public var §-!P§:Boolean;
      
      [Transient]
      public var §-!p§:Boolean = false;
      
      public function §5"2§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param3))
         {
            this.§@"0§ = param4;
            while(true)
            {
               this.§<L§ = param5;
               while(!_loc9_)
               {
                  this.§3H§ = param6;
                  loop2:
                  while(_loc8_)
                  {
                     while(true)
                     {
                        super(param1,param2,param3,param7);
                        if(_loc8_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public static function §[!b§(param1:Object) : §5"2§
      {
         return new §5"2§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
