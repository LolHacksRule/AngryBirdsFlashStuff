package §]!>§
{
   public class §2!W§ extends §@"+§
   {
       
      
      public var § "3§:int;
      
      public var stars:int;
      
      public var §69§:int;
      
      public var §'<§:Boolean;
      
      [Transient]
      public var §7!X§:Boolean = false;
      
      public function §2!W§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            this.§ "3§ = param4;
            while(true)
            {
               this.stars = param5;
               loop2:
               while(!(_loc8_ && param2))
               {
                  super(param1,param2,param3,param7);
                  if(_loc9_)
                  {
                     addr53:
                     if(!(_loc9_ || param2))
                     {
                        while(true)
                        {
                           this.§69§ = param6;
                           continue loop2;
                           §§goto(addr53);
                        }
                        addr77:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public static function §!!t§(param1:Object) : §2!W§
      {
         return new §2!W§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
