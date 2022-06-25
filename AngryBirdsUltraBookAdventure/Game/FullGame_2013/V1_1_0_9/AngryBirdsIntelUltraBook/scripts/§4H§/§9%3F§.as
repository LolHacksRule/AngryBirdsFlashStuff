package §4H§
{
   public class §9?§ extends §%!E§
   {
       
      
      public var §;!u§:int;
      
      public var stars:int;
      
      public var §1t§:int;
      
      public var §5!c§:Boolean;
      
      [Transient]
      public var §7!J§:Boolean = false;
      
      public function §9?§(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§;!u§ = param4;
         }
         while(true)
         {
            this.stars = param5;
            while(_loc8_ || this)
            {
               this.§1t§ = param6;
               do
               {
                  super(param1,param2,param3,param7);
               }
               while(!(_loc8_ || this));
               
               if(!_loc9_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §+!7§(param1:Object) : §9?§
      {
         return new §9?§(param1.u,param1.n,param1.a,param1.p,param1.s,param1.me,param1.r);
      }
   }
}
