package §#&§
{
   public class §9!o§ extends §+!5§
   {
       
      
      public var §#!6§:int;
      
      public var stars:int;
      
      public var §-s§:int;
      
      public var §<!E§:Boolean;
      
      [Transient]
      public var §+!Z§:Boolean = false;
      
      public function §9!o§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            this.§#!6§ = param4;
         }
         while(true)
         {
            this.stars = param5;
            while(!(_loc8_ && param3))
            {
               this.§-s§ = param6;
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
      
      public static function §2!L§(param1:Object) : §9!o§
      {
         return new §9!o§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
